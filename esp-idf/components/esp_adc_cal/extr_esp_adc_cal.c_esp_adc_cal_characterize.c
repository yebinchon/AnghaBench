
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int esp_adc_cal_value_t ;
struct TYPE_3__ {int * high_curve; int * low_curve; int vref; scalar_t__ bit_width; scalar_t__ atten; scalar_t__ adc_num; int coeff_b; int coeff_a; } ;
typedef TYPE_1__ esp_adc_cal_characteristics_t ;
typedef scalar_t__ adc_unit_t ;
typedef scalar_t__ adc_bits_width_t ;
typedef scalar_t__ adc_atten_t ;


 scalar_t__ ADC_ATTEN_DB_11 ;
 scalar_t__ ADC_UNIT_1 ;
 scalar_t__ ADC_UNIT_2 ;
 scalar_t__ ADC_WIDTH_MAX ;
 scalar_t__ EFUSE_TP_ENABLED ;
 scalar_t__ EFUSE_VREF_ENABLED ;
 int ESP_ADC_CAL_VAL_DEFAULT_VREF ;
 int ESP_ADC_CAL_VAL_EFUSE_TP ;
 int ESP_ADC_CAL_VAL_EFUSE_VREF ;
 scalar_t__ LUT_ENABLED ;
 int assert (int) ;
 int characterize_using_two_point (scalar_t__,scalar_t__,int ,int ,int *,int *) ;
 int characterize_using_vref (scalar_t__,scalar_t__,int ,int *,int *) ;
 int check_efuse_tp () ;
 int check_efuse_vref () ;
 int * lut_adc1_high ;
 int * lut_adc1_low ;
 int * lut_adc2_high ;
 int * lut_adc2_low ;
 int read_efuse_tp_high (scalar_t__) ;
 int read_efuse_tp_low (scalar_t__) ;
 int read_efuse_vref () ;

esp_adc_cal_value_t esp_adc_cal_characterize(adc_unit_t adc_num,
                                             adc_atten_t atten,
                                             adc_bits_width_t bit_width,
                                             uint32_t default_vref,
                                             esp_adc_cal_characteristics_t *chars)
{

    assert((adc_num == ADC_UNIT_1) || (adc_num == ADC_UNIT_2));
    assert(chars != ((void*)0));
    assert(bit_width < ADC_WIDTH_MAX);


    bool efuse_tp_present = check_efuse_tp();
    bool efuse_vref_present = check_efuse_vref();
    esp_adc_cal_value_t ret;

    if (efuse_tp_present && EFUSE_TP_ENABLED) {

        uint32_t high = read_efuse_tp_high(adc_num);
        uint32_t low = read_efuse_tp_low(adc_num);
        characterize_using_two_point(adc_num, atten, high, low, &chars->coeff_a, &chars->coeff_b);
        ret = ESP_ADC_CAL_VAL_EFUSE_TP;
    } else if (efuse_vref_present && EFUSE_VREF_ENABLED) {

        uint32_t vref = read_efuse_vref();
        characterize_using_vref(adc_num, atten, vref, &chars->coeff_a, &chars->coeff_b);
        ret = ESP_ADC_CAL_VAL_EFUSE_VREF;
    } else {

        characterize_using_vref(adc_num, atten, default_vref, &chars->coeff_a, &chars->coeff_b);
        ret = ESP_ADC_CAL_VAL_DEFAULT_VREF;
    }


    chars->adc_num = adc_num;
    chars->atten = atten;
    chars->bit_width = bit_width;
    chars->vref = (EFUSE_VREF_ENABLED && efuse_vref_present) ? read_efuse_vref() : default_vref;

    if (LUT_ENABLED && atten == ADC_ATTEN_DB_11) {
        chars->low_curve = (adc_num == ADC_UNIT_1) ? lut_adc1_low : lut_adc2_low;
        chars->high_curve = (adc_num == ADC_UNIT_1) ? lut_adc1_high : lut_adc2_high;
    } else {
        chars->low_curve = ((void*)0);
        chars->high_curve = ((void*)0);
    }
    return ret;
}
