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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int** mpc8_cnk_len ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline int FUNC1(GetBitContext *gb, int m)
{
    if(mpc8_cnk_len[0][m] < 1) return 0;
    return FUNC0(gb, 1, m+1);
}