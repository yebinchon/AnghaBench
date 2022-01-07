
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codec_info; } ;
typedef TYPE_1__ tBTC_MEDIA_SINK_CFG_UPDATE ;
typedef int UINT8 ;


 int APPL_TRACE_DEBUG (char*,int ,int ,int ,int ,int ,int ) ;
 int APPL_TRACE_ERROR (char*) ;
 int APPL_TRACE_EVENT (char*) ;
 int AVDT_CODEC_SIZE ;
 int BTC_MEDIA_AUDIO_SINK_CFG_UPDATE ;
 int btc_a2dp_sink_ctrl (int ,TYPE_1__*) ;
 int memcpy (int ,int *,int ) ;
 TYPE_1__* osi_malloc (int) ;

void btc_a2dp_sink_reset_decoder(UINT8 *p_av)
{
    APPL_TRACE_EVENT("btc reset decoder");
    APPL_TRACE_DEBUG("btc reset decoder p_codec_info[%x:%x:%x:%x:%x:%x]\n",
                     p_av[1], p_av[2], p_av[3],
                     p_av[4], p_av[5], p_av[6]);

    tBTC_MEDIA_SINK_CFG_UPDATE *p_buf;
    if (((void*)0) == (p_buf = osi_malloc(sizeof(tBTC_MEDIA_SINK_CFG_UPDATE)))) {
        APPL_TRACE_ERROR("btc reset decoder No Buffer ");
        return;
    }

    memcpy(p_buf->codec_info, p_av, AVDT_CODEC_SIZE);
    btc_a2dp_sink_ctrl(BTC_MEDIA_AUDIO_SINK_CFG_UPDATE, p_buf);
}
