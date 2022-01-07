
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ppp_pcb ;
struct TYPE_3__ {int (* send_data ) (TYPE_1__*,char const*,int ) ;} ;
typedef TYPE_1__ modem_dte_t ;


 int stub1 (TYPE_1__*,char const*,int ) ;

__attribute__((used)) static uint32_t pppos_low_level_output(ppp_pcb *pcb, uint8_t *data, uint32_t len, void *ctx)
{
    modem_dte_t *dte = (modem_dte_t *)ctx;
    return dte->send_data(dte, (const char *)data, len);
}
