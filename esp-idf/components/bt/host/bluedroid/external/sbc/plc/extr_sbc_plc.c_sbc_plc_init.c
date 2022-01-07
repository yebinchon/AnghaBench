
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hist; scalar_t__ bestlag; scalar_t__ nbf; } ;
typedef TYPE_1__ sbc_plc_state_t ;


 int memset (int ,int ,int) ;

void sbc_plc_init(sbc_plc_state_t *plc_state){
    plc_state->nbf=0;
    plc_state->bestlag=0;
    memset(plc_state->hist, 0, sizeof(plc_state->hist));
}
