
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PortCount; int * PortDescriptors; } ;
typedef int LADSPA_PortDescriptor ;
typedef TYPE_1__ LADSPA_Descriptor ;


 scalar_t__ LADSPA_IS_PORT_AUDIO (int ) ;
 scalar_t__ LADSPA_IS_PORT_INPUT (int ) ;
 scalar_t__ LADSPA_IS_PORT_OUTPUT (int ) ;

__attribute__((used)) static void count_ports(const LADSPA_Descriptor *desc,
                        unsigned long *nb_inputs, unsigned long *nb_outputs)
{
    LADSPA_PortDescriptor pd;
    int i;

    for (i = 0; i < desc->PortCount; i++) {
        pd = desc->PortDescriptors[i];

        if (LADSPA_IS_PORT_AUDIO(pd)) {
            if (LADSPA_IS_PORT_INPUT(pd)) {
                (*nb_inputs)++;
            } else if (LADSPA_IS_PORT_OUTPUT(pd)) {
                (*nb_outputs)++;
            }
        }
    }
}
