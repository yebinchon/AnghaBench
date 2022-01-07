
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APPL_TRACE_WARNING (char*,int) ;





 int btc_a2dp_sink_handle_clear_track () ;
 int btc_a2dp_sink_handle_decoder_reset (void*) ;
 int btc_a2dp_sink_rx_flush () ;
 int btc_a2dp_sink_thread_cleanup (int *) ;
 int btc_a2dp_sink_thread_init (int *) ;
 int osi_free (void*) ;

__attribute__((used)) static bool btc_a2dp_sink_ctrl(uint32_t sig, void *param)
{
    switch (sig) {
    case 128:
        btc_a2dp_sink_thread_init(((void*)0));
        break;
    case 129:
        btc_a2dp_sink_thread_cleanup(((void*)0));
        break;
    case 132:
        btc_a2dp_sink_handle_decoder_reset(param);
        break;
    case 131:
        btc_a2dp_sink_handle_clear_track();
        break;
    case 130:
        btc_a2dp_sink_rx_flush();
        break;
    default:
        APPL_TRACE_WARNING("media task unhandled evt: 0x%x\n", sig);
    }

    if (param != ((void*)0)) {
        osi_free(param);
    }

    return 1;
}
