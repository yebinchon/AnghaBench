
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int max_latency; int voice_contfmt; scalar_t__ retrans_effort; int packet_types; void* rx_bw; void* tx_bw; } ;
struct TYPE_5__ {scalar_t__ desired_sco_mode; scalar_t__ esco_supported; TYPE_2__ def_esco_parms; } ;
typedef TYPE_1__ tSCO_CB ;
typedef int tBTM_STATUS ;
typedef scalar_t__ tBTM_SCO_TYPE ;
typedef TYPE_2__ tBTM_ESCO_PARAMS ;
struct TYPE_7__ {TYPE_1__ sco_cb; } ;


 void* BTM_64KBITS_RATE ;
 scalar_t__ BTM_LINK_TYPE_ESCO ;
 scalar_t__ BTM_LINK_TYPE_SCO ;
 int BTM_SCO_EXCEPTION_PKTS_MASK ;
 int BTM_SCO_LINK_ONLY_MASK ;
 int BTM_SUCCESS ;
 int BTM_TRACE_API (char*,...) ;
 int BTM_TRACE_DEBUG (char*,void*,void*,int,int,int ,scalar_t__) ;
 TYPE_3__ btm_cb ;

tBTM_STATUS BTM_SetEScoMode (tBTM_SCO_TYPE sco_mode, tBTM_ESCO_PARAMS *p_parms)
{
    tSCO_CB *p_esco = &btm_cb.sco_cb;
    tBTM_ESCO_PARAMS *p_def = &p_esco->def_esco_parms;

    if (p_esco->esco_supported) {
        if (p_parms) {
            if (sco_mode == BTM_LINK_TYPE_ESCO) {
                *p_def = *p_parms;
            } else {
                p_def->packet_types = p_parms->packet_types;
                p_def->tx_bw = BTM_64KBITS_RATE;
                p_def->rx_bw = BTM_64KBITS_RATE;
                p_def->max_latency = 0x000a;
                p_def->voice_contfmt = 0x0060;
                p_def->retrans_effort = 0;


                p_def->packet_types |= BTM_SCO_EXCEPTION_PKTS_MASK;
            }
        }
        p_esco->desired_sco_mode = sco_mode;
        BTM_TRACE_API("BTM_SetEScoMode -> mode %d", sco_mode);
    } else {
        p_esco->desired_sco_mode = BTM_LINK_TYPE_SCO;
        p_def->packet_types &= BTM_SCO_LINK_ONLY_MASK;
        p_def->retrans_effort = 0;
        BTM_TRACE_API("BTM_SetEScoMode -> mode SCO (eSCO not supported)");
    }

    BTM_TRACE_DEBUG("    txbw 0x%08x, rxbw 0x%08x, max_lat 0x%04x, voice 0x%04x, pkt 0x%04x, rtx effort 0x%02x",
                    p_def->tx_bw, p_def->rx_bw, p_def->max_latency,
                    p_def->voice_contfmt, p_def->packet_types,
                    p_def->retrans_effort);

    return (BTM_SUCCESS);
}
