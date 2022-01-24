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
struct inpcb {int /*<<< orphan*/  inp_nw_activity; } ;
typedef  int /*<<< orphan*/  activity_bitmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

inline void
FUNC1(struct inpcb *inp, activity_bitmap_t *ab)
{
	FUNC0(&inp->inp_nw_activity, ab, sizeof (*ab));
}