#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FUNC0 (int const,int const) ; 

__attribute__((used)) static void FUNC1(const int *input, int *output)
{
    static const int cos_mod[16] = {
          4199362,   4240198,   4323885,   4454708,
          4639772,   4890013,   5221943,   5660703,
         -6245623,  -7040975,  -8158494,  -9809974,
        -12450076, -17261920, -28585092, -85479984
    };

    int i, k;

    for (i = 0; i < 8; i++)
        output[i] = FUNC0(cos_mod[i], input[i] + input[8 + i]);

    for (i = 8, k = 7; i < 16; i++, k--)
        output[i] = FUNC0(cos_mod[i], input[k] - input[8 + k]);
}