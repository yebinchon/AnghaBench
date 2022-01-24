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
 int NUMCHARS ; 
 int FUNC0 (int) ; 
 int FUNC1 (float*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(float *pred, int n)
{
    int i;
    for(i = 0; i < n; ++i){
        int index = FUNC1(pred+i*NUMCHARS, NUMCHARS);
        FUNC2("%c", FUNC0(index));
    }
    FUNC2("\n");
}