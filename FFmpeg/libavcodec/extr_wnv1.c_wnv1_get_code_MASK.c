#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int shift; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ WNV1Context ;
struct TYPE_5__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE_VLC_BITS ; 
 TYPE_3__ code_vlc ; 
 int* ff_reverse ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(WNV1Context *w, int base_value)
{
    int v = FUNC1(&w->gb, code_vlc.table, CODE_VLC_BITS, 1);

    if (v == 15)
        return ff_reverse[FUNC0(&w->gb, 8 - w->shift)];
    else
        return base_value + ((v - 7U) << w->shift);
}