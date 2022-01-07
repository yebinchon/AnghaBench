
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int * module; } ;
typedef TYPE_1__ OpenMPTContext ;
typedef TYPE_2__ AVFormatContext ;


 int openmpt_module_destroy (int *) ;

__attribute__((used)) static int read_close_openmpt(AVFormatContext *s)
{
    OpenMPTContext *openmpt = s->priv_data;
    openmpt_module_destroy(openmpt->module);
    openmpt->module = ((void*)0);
    return 0;
}
