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
struct seg_tx {int /*<<< orphan*/  retransmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seg_tx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int err, void *user_data)
{
    struct seg_tx *tx = user_data;

    FUNC1(&tx->retransmit,
                          FUNC0(tx));
}