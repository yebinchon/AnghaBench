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
 unsigned int FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static inline int FUNC1(GetBitContext *gb, int k, int limit,
                                     int esc_len)
{
    unsigned v = FUNC0(gb, k, limit, esc_len);
    return (v >> 1) ^ -(v & 1);
}