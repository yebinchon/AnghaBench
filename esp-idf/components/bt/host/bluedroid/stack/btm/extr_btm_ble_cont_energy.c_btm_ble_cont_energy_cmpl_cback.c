
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int param_len; int * p_param_buf; } ;
typedef TYPE_1__ tBTM_VSC_CMPL ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_5__ {int (* p_ener_cback ) (int ,int ,int ,int ,int ) ;} ;


 int BTM_TRACE_DEBUG (char*,int ,int ,int ,int ,int ) ;
 int BTM_TRACE_ERROR (char*) ;
 int STREAM_TO_UINT32 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 TYPE_3__ ble_energy_info_cb ;
 int stub1 (int ,int ,int ,int ,int ) ;

void btm_ble_cont_energy_cmpl_cback (tBTM_VSC_CMPL *p_params)
{
    UINT8 *p = p_params->p_param_buf;
    UINT16 len = p_params->param_len;
    UINT8 status = 0;
    UINT32 total_tx_time = 0, total_rx_time = 0, total_idle_time = 0, total_energy_used = 0;

    if (len < 17) {
        BTM_TRACE_ERROR("wrong length for btm_ble_cont_energy_cmpl_cback");
        return;
    }

    STREAM_TO_UINT8(status, p);
    STREAM_TO_UINT32(total_tx_time, p);
    STREAM_TO_UINT32(total_rx_time, p);
    STREAM_TO_UINT32(total_idle_time, p);
    STREAM_TO_UINT32(total_energy_used, p);

    BTM_TRACE_DEBUG("energy_info status=%d,tx_t=%u, rx_t=%u, ener_used=%u, idle_t=%u",
                    status, total_tx_time, total_rx_time, total_energy_used, total_idle_time);

    if (((void*)0) != ble_energy_info_cb.p_ener_cback) {
        ble_energy_info_cb.p_ener_cback(total_tx_time, total_rx_time, total_idle_time,
                                        total_energy_used, status);
    }

    return;
}
