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
 int /*<<< orphan*/ * filtergraphs ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int nb_filtergraphs ; 

__attribute__((used)) static int FUNC1(void)
{
    int i, ret = 0;

    for (i = 0; i < nb_filtergraphs; i++) {
        ret = FUNC0(filtergraphs[i]);
        if (ret < 0)
            return ret;
    }
    return 0;
}