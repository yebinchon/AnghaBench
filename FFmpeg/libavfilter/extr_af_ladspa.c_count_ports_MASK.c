#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int PortCount; int /*<<< orphan*/ * PortDescriptors; } ;
typedef  int /*<<< orphan*/  LADSPA_PortDescriptor ;
typedef  TYPE_1__ LADSPA_Descriptor ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const LADSPA_Descriptor *desc,
                        unsigned long *nb_inputs, unsigned long *nb_outputs)
{
    LADSPA_PortDescriptor pd;
    int i;

    for (i = 0; i < desc->PortCount; i++) {
        pd = desc->PortDescriptors[i];

        if (FUNC0(pd)) {
            if (FUNC1(pd)) {
                (*nb_inputs)++;
            } else if (FUNC2(pd)) {
                (*nb_outputs)++;
            }
        }
    }
}