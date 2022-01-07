
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint32_t ;
typedef int portTickType ;
typedef size_t i2s_port_t ;
struct TYPE_23__ {int mux; scalar_t__* desc; } ;
typedef TYPE_9__ i2s_dma_t ;
typedef int i2s_channel_t ;
typedef int i2s_bits_per_sample_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_22__ {int tx_bck_div_num; int rx_bck_div_num; int tx_bits_mod; int rx_bits_mod; } ;
struct TYPE_21__ {int clkm_div_num; int clkm_div_b; int clkm_div_a; int clka_en; int clk_sel; } ;
struct TYPE_20__ {int rx_sinc_dsr_16_en; } ;
struct TYPE_19__ {int tx_pdm_fp; int tx_pdm_fs; } ;
struct TYPE_18__ {int addr; } ;
struct TYPE_17__ {int addr; } ;
struct TYPE_16__ {int tx_fifo_mod; int rx_fifo_mod; } ;
struct TYPE_15__ {int tx_chan_mod; int rx_chan_mod; } ;
struct TYPE_14__ {int rx_eof_num; TYPE_8__ sample_rate_conf; TYPE_7__ clkm_conf; TYPE_6__ pdm_conf; TYPE_5__ pdm_freq_conf; TYPE_4__ in_link; TYPE_3__ out_link; TYPE_2__ fifo_conf; TYPE_1__ conf_chan; } ;
struct TYPE_13__ {int sample_rate; int mode; int channel_num; int bits_per_sample; int bytes_per_sample; int dma_buf_len; int fixed_mclk; double real_rate; TYPE_9__* rx; TYPE_9__* tx; scalar_t__ use_apll; int dma_buf_count; } ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_LOGD (int ,char*,int,int,int,int) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,int,double,int,int,int,double,double,int,int) ;
 scalar_t__ ESP_OK ;
 TYPE_12__** I2S ;
 int I2S_AD_BCK_FACTOR ;
 int I2S_BASE_CLK ;
 int I2S_BITS_PER_SAMPLE_16BIT ;
 int I2S_BITS_PER_SAMPLE_32BIT ;
 int I2S_CHECK (int,char*,scalar_t__) ;
 int I2S_MODE_ADC_BUILT_IN ;
 int I2S_MODE_DAC_BUILT_IN ;
 int I2S_MODE_PDM ;
 int I2S_MODE_RX ;
 int I2S_MODE_TX ;
 size_t I2S_NUM_MAX ;
 int I2S_PDM_BCK_FACTOR ;
 int I2S_TAG ;
 scalar_t__ i2s_apll_calculate_fi2s (int,int,int*,int*,int*,int*) ;
 double i2s_apll_get_fi2s (int,int,int,int,int) ;
 void* i2s_create_dma_queue (size_t,int ,int) ;
 int i2s_destroy_dma_queue (size_t,TYPE_9__*) ;
 int i2s_driver_uninstall (size_t) ;
 int i2s_start (size_t) ;
 int i2s_stop (size_t) ;
 TYPE_10__** p_i2s_obj ;
 scalar_t__ portMAX_DELAY ;
 int rtc_clk_apll_enable (int,int,int,int,int) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

esp_err_t i2s_set_clk(i2s_port_t i2s_num, uint32_t rate, i2s_bits_per_sample_t bits, i2s_channel_t ch)
{
    int factor = (256%bits)? 384 : 256;
    int clkmInteger, clkmDecimals, bck = 0;
    double denom = (double)1 / 64;
    int channel = 2;
    i2s_dma_t *save_tx = ((void*)0), *save_rx = ((void*)0);

    I2S_CHECK((i2s_num < I2S_NUM_MAX), "i2s_num error", ESP_ERR_INVALID_ARG);

    if (bits % 8 != 0 || bits > I2S_BITS_PER_SAMPLE_32BIT || bits < I2S_BITS_PER_SAMPLE_16BIT) {
        ESP_LOGE(I2S_TAG, "Invalid bits per sample");
        return ESP_ERR_INVALID_ARG;
    }

    if (p_i2s_obj[i2s_num] == ((void*)0)) {
        ESP_LOGE(I2S_TAG, "Not initialized yet");
        return ESP_ERR_INVALID_ARG;
    }
    p_i2s_obj[i2s_num]->sample_rate = rate;
    double clkmdiv = (double)I2S_BASE_CLK / (rate * factor);

    if (clkmdiv > 256) {
        ESP_LOGE(I2S_TAG, "clkmdiv is too large\r\n");
        return ESP_ERR_INVALID_ARG;
    }


    if ((p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) && p_i2s_obj[i2s_num]->tx) {
        xSemaphoreTake(p_i2s_obj[i2s_num]->tx->mux, (portTickType)portMAX_DELAY);
    }
    if ((p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) && p_i2s_obj[i2s_num]->rx) {
        xSemaphoreTake(p_i2s_obj[i2s_num]->rx->mux, (portTickType)portMAX_DELAY);
    }

    i2s_stop(i2s_num);


    uint32_t cur_mode = 0;
    if (p_i2s_obj[i2s_num]->channel_num != ch) {
        p_i2s_obj[i2s_num]->channel_num = (ch == 2) ? 2 : 1;
        cur_mode = I2S[i2s_num]->fifo_conf.tx_fifo_mod;
        I2S[i2s_num]->fifo_conf.tx_fifo_mod = (ch == 2) ? cur_mode - 1 : cur_mode + 1;
        cur_mode = I2S[i2s_num]->fifo_conf.rx_fifo_mod;
        I2S[i2s_num]->fifo_conf.rx_fifo_mod = (ch == 2) ? cur_mode -1 : cur_mode + 1;
        I2S[i2s_num]->conf_chan.tx_chan_mod = (ch == 2) ? 0 : 1;
        I2S[i2s_num]->conf_chan.rx_chan_mod = (ch == 2) ? 0 : 1;
    }

    if (bits != p_i2s_obj[i2s_num]->bits_per_sample) {


        if (p_i2s_obj[i2s_num]->bits_per_sample <= 16 && bits > 16) {
            I2S[i2s_num]->fifo_conf.tx_fifo_mod += 2;
            I2S[i2s_num]->fifo_conf.rx_fifo_mod += 2;
        } else if (p_i2s_obj[i2s_num]->bits_per_sample > 16 && bits <= 16) {
            I2S[i2s_num]->fifo_conf.tx_fifo_mod -= 2;
            I2S[i2s_num]->fifo_conf.rx_fifo_mod -= 2;
        }

        p_i2s_obj[i2s_num]->bits_per_sample = bits;
        p_i2s_obj[i2s_num]->bytes_per_sample = p_i2s_obj[i2s_num]->bits_per_sample / 8;


        int halfwords_per_sample = (p_i2s_obj[i2s_num]->bits_per_sample + 15) / 16;
        p_i2s_obj[i2s_num]->bytes_per_sample = halfwords_per_sample * 2;


        if (p_i2s_obj[i2s_num]->dma_buf_len * p_i2s_obj[i2s_num]->bytes_per_sample * p_i2s_obj[i2s_num]->channel_num > 4092) {
            p_i2s_obj[i2s_num]->dma_buf_len = 4092 / p_i2s_obj[i2s_num]->bytes_per_sample / p_i2s_obj[i2s_num]->channel_num;
        }

        if (p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) {

            save_tx = p_i2s_obj[i2s_num]->tx;

            p_i2s_obj[i2s_num]->tx = i2s_create_dma_queue(i2s_num, p_i2s_obj[i2s_num]->dma_buf_count, p_i2s_obj[i2s_num]->dma_buf_len);
            if (p_i2s_obj[i2s_num]->tx == ((void*)0)) {
                ESP_LOGE(I2S_TAG, "Failed to create tx dma buffer");
                i2s_driver_uninstall(i2s_num);
                return ESP_ERR_NO_MEM;
            }
            I2S[i2s_num]->out_link.addr = (uint32_t) p_i2s_obj[i2s_num]->tx->desc[0];


            if (save_tx) {
                i2s_destroy_dma_queue(i2s_num, save_tx);
            }
        }

        if (p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) {

            save_rx = p_i2s_obj[i2s_num]->rx;

            p_i2s_obj[i2s_num]->rx = i2s_create_dma_queue(i2s_num, p_i2s_obj[i2s_num]->dma_buf_count, p_i2s_obj[i2s_num]->dma_buf_len);
            if (p_i2s_obj[i2s_num]->rx == ((void*)0)){
                ESP_LOGE(I2S_TAG, "Failed to create rx dma buffer");
                i2s_driver_uninstall(i2s_num);
                return ESP_ERR_NO_MEM;
            }







            I2S[i2s_num]->in_link.addr = (uint32_t) p_i2s_obj[i2s_num]->rx->desc[0];


            if (save_rx) {
                i2s_destroy_dma_queue(i2s_num, save_rx);
            }
        }

    }

    double mclk;
    int sdm0, sdm1, sdm2, odir, m_scale = 8;
    int fi2s_clk = rate*channel*bits*m_scale;
    if (p_i2s_obj[i2s_num]->mode & (I2S_MODE_DAC_BUILT_IN | I2S_MODE_ADC_BUILT_IN)) {



        uint32_t b_clk = rate * I2S_AD_BCK_FACTOR;
        fi2s_clk /= I2S_AD_BCK_FACTOR;
        int factor2 = 60;
        mclk = b_clk * factor2;
        clkmdiv = ((double) I2S_BASE_CLK) / mclk;
        clkmInteger = clkmdiv;
        clkmDecimals = (clkmdiv - clkmInteger) / denom;
        bck = mclk / b_clk;
    } else {
        clkmInteger = clkmdiv;
        clkmDecimals = (clkmdiv - clkmInteger) / denom;
        mclk = clkmInteger + denom * clkmDecimals;
        bck = factor/(bits * channel);
    }

    if(p_i2s_obj[i2s_num]->use_apll && p_i2s_obj[i2s_num]->fixed_mclk) {
        fi2s_clk = p_i2s_obj[i2s_num]->fixed_mclk;
        m_scale = fi2s_clk/bits/rate/channel;
    }
    if(p_i2s_obj[i2s_num]->use_apll && i2s_apll_calculate_fi2s(fi2s_clk, bits, &sdm0, &sdm1, &sdm2, &odir) == ESP_OK) {
        ESP_LOGD(I2S_TAG, "sdm0=%d, sdm1=%d, sdm2=%d, odir=%d", sdm0, sdm1, sdm2, odir);
        rtc_clk_apll_enable(1, sdm0, sdm1, sdm2, odir);
        I2S[i2s_num]->clkm_conf.clkm_div_num = 1;
        I2S[i2s_num]->clkm_conf.clkm_div_b = 0;
        I2S[i2s_num]->clkm_conf.clkm_div_a = 1;
        I2S[i2s_num]->sample_rate_conf.tx_bck_div_num = m_scale;
        I2S[i2s_num]->sample_rate_conf.rx_bck_div_num = m_scale;





        double fi2s_rate = i2s_apll_get_fi2s(bits, sdm0, sdm1, sdm2, odir);
        p_i2s_obj[i2s_num]->real_rate = fi2s_rate/bits/channel/m_scale;
        ESP_LOGI(I2S_TAG, "APLL: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK_M: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d",
            rate, fi2s_rate/bits/channel/m_scale, bits, 1, m_scale, fi2s_rate, fi2s_rate/8, 1, 0);
    } else {





        I2S[i2s_num]->clkm_conf.clkm_div_a = 63;
        I2S[i2s_num]->clkm_conf.clkm_div_b = clkmDecimals;
        I2S[i2s_num]->clkm_conf.clkm_div_num = clkmInteger;
        I2S[i2s_num]->sample_rate_conf.tx_bck_div_num = bck;
        I2S[i2s_num]->sample_rate_conf.rx_bck_div_num = bck;
        double real_rate = (double) (I2S_BASE_CLK / (bck * bits * clkmInteger) / 2);
        p_i2s_obj[i2s_num]->real_rate = real_rate;
        ESP_LOGI(I2S_TAG, "PLL_D2: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d",
            rate, real_rate, bits, clkmInteger, bck, (double)I2S_BASE_CLK / mclk, real_rate*bits*channel, 64, clkmDecimals);
    }

    I2S[i2s_num]->sample_rate_conf.tx_bits_mod = bits;
    I2S[i2s_num]->sample_rate_conf.rx_bits_mod = bits;


    if ((p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) && p_i2s_obj[i2s_num]->tx) {
        xSemaphoreGive(p_i2s_obj[i2s_num]->tx->mux);
    }
    if ((p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) && p_i2s_obj[i2s_num]->rx) {
        xSemaphoreGive(p_i2s_obj[i2s_num]->rx->mux);
    }
    i2s_start(i2s_num);
    return ESP_OK;
}
