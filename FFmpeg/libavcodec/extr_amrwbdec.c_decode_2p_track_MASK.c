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
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (int,int,int) ; 

__attribute__((used)) static inline void FUNC2(int *out, int code, int m, int off) ///code: 2m+1 bits
{
    int pos0 = FUNC1(code, m, m) + off;
    int pos1 = FUNC1(code, 0, m) + off;

    out[0] = FUNC0(code, 2*m) ? -pos0 : pos0;
    out[1] = FUNC0(code, 2*m) ? -pos1 : pos1;
    out[1] = pos0 > pos1 ? -out[1] : out[1];
}