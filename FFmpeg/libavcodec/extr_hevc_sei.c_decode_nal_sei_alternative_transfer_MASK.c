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
struct TYPE_3__ {int present; int /*<<< orphan*/  preferred_transfer_characteristics; } ;
typedef  TYPE_1__ HEVCSEIAlternativeTransfer ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(HEVCSEIAlternativeTransfer *s, GetBitContext *gb)
{
    s->present = 1;
    s->preferred_transfer_characteristics = FUNC0(gb, 8);
    return 0;
}