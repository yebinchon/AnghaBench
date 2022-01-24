#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ buffer; } ;
struct TYPE_10__ {TYPE_1__* HEVClc; } ;
struct TYPE_9__ {int /*<<< orphan*/  cc; TYPE_3__ gb; } ;
typedef  TYPE_2__ HEVCContext ;
typedef  TYPE_3__ GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC5(HEVCContext *s)
{
    GetBitContext *gb = &s->HEVClc->gb;
    FUNC4(gb, 1);
    FUNC0(gb);
    return FUNC1(&s->HEVClc->cc,
                          gb->buffer + FUNC2(gb) / 8,
                          (FUNC3(gb) + 7) / 8);
}