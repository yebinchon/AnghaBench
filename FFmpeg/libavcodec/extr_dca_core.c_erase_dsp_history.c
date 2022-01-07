
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ output_history_lfe_float; scalar_t__ output_history_lfe_fixed; int dcadsp_data; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void erase_dsp_history(DCACoreDecoder *s)
{
    memset(s->dcadsp_data, 0, sizeof(s->dcadsp_data));
    s->output_history_lfe_fixed = 0;
    s->output_history_lfe_float = 0;
}
