#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  auth_req; int /*<<< orphan*/  value; int /*<<< orphan*/  value_len; int /*<<< orphan*/  write_type; int /*<<< orphan*/  handle; int /*<<< orphan*/  conn_id; } ;
struct TYPE_5__ {TYPE_1__ write_char; } ;
typedef  TYPE_2__ btc_ble_gattc_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(btc_ble_gattc_args_t *arg)
{
    FUNC0(arg->write_char.conn_id,
                             arg->write_char.handle,
                             arg->write_char.write_type,
                             arg->write_char.value_len,
                             arg->write_char.value,
                             arg->write_char.auth_req);
}