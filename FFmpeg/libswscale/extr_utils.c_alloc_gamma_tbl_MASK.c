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
typedef  double uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 double FUNC1 (int,double) ; 

__attribute__((used)) static uint16_t * FUNC2(double e)
{
    int i = 0;
    uint16_t * tbl;
    tbl = (uint16_t*)FUNC0(sizeof(uint16_t) * 1 << 16);
    if (!tbl)
        return NULL;

    for (i = 0; i < 65536; ++i) {
        tbl[i] = FUNC1(i / 65535.0, e) * 65535.0;
    }
    return tbl;
}