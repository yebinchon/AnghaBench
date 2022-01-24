#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* update_altref; void* update_golden; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ VP8Context ;
typedef  int /*<<< orphan*/  VP56RangeCoder ;

/* Variables and functions */
 int /*<<< orphan*/  VP56_FRAME_GOLDEN ; 
 int /*<<< orphan*/  VP56_FRAME_GOLDEN2 ; 
 void* FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(VP8Context *s)
{
    VP56RangeCoder *c = &s->c;

    int update_golden = FUNC1(c);
    int update_altref = FUNC1(c);

    s->update_golden = FUNC0(s, update_golden, VP56_FRAME_GOLDEN);
    s->update_altref = FUNC0(s, update_altref, VP56_FRAME_GOLDEN2);
}