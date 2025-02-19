
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t mcpwm_unit_t ;
typedef scalar_t__ mcpwm_capture_signal_t ;
struct TYPE_3__ {scalar_t__ cap2_edge; scalar_t__ cap1_edge; scalar_t__ cap0_edge; } ;
struct TYPE_4__ {TYPE_1__ cap_status; } ;


 int ESP_ERR_INVALID_ARG ;
 TYPE_2__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 scalar_t__ MCPWM_SELECT_CAP0 ;
 scalar_t__ MCPWM_SELECT_CAP1 ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;

uint32_t mcpwm_capture_signal_get_edge(mcpwm_unit_t mcpwm_num, mcpwm_capture_signal_t cap_sig)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    if (cap_sig == MCPWM_SELECT_CAP0) {
        return ( MCPWM[mcpwm_num]->cap_status.cap0_edge + 1);
    } else if (cap_sig == MCPWM_SELECT_CAP1) {
        return (MCPWM[mcpwm_num]->cap_status.cap1_edge + 1);
    } else {
        return (MCPWM[mcpwm_num]->cap_status.cap2_edge + 1);
    }
    return 0;
}
