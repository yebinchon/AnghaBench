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
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(int isin, int icos)
{
    int lc, ls;
    lc = FUNC1(icos);
    ls = FUNC1(isin);
    icos <<= 15 - lc;
    isin <<= 15 - ls;
    return (ls << 11) - (lc << 11) +
           FUNC0(isin, FUNC0(isin, -2597) + 7932) -
           FUNC0(icos, FUNC0(icos, -2597) + 7932);
}