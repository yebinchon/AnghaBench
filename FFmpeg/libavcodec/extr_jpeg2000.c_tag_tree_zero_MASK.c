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
struct TYPE_3__ {scalar_t__ vis; scalar_t__ val; } ;
typedef  TYPE_1__ Jpeg2000TgtNode ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(Jpeg2000TgtNode *t, int w, int h)
{
    int i, siz = FUNC0(w, h);

    for (i = 0; i < siz; i++) {
        t[i].val = 0;
        t[i].vis = 0;
    }
}