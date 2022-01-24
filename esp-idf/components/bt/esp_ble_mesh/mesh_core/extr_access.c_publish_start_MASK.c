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
typedef  int /*<<< orphan*/  u16_t ;
struct bt_mesh_model_pub {scalar_t__ count; int /*<<< orphan*/  period_start; int /*<<< orphan*/  retransmit; } ;
struct bt_mesh_model {struct bt_mesh_model_pub* pub; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(u16_t duration, int err, void *user_data)
{
    struct bt_mesh_model *mod = user_data;
    struct bt_mesh_model_pub *pub = mod->pub;

    if (err) {
        FUNC1("Failed to publish: err %d", err);
        return;
    }

    /* Initialize the timestamp for the beginning of a new period */
    if (pub->count == FUNC0(pub->retransmit)) {
        pub->period_start = FUNC2();
    }
}