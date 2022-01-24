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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  (* bt_mesh_dh_key_cb_t ) (int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BT_OCTET32_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bt_mesh_private_key ; 

int FUNC3(const u8_t remote_pk[64], bt_mesh_dh_key_cb_t cb, const u8_t idx)
{
    uint8_t dhkey[32];

    FUNC0("private key = %s", FUNC2(bt_mesh_private_key, BT_OCTET32_LEN));

    FUNC1((uint8_t *)&remote_pk[0], (uint8_t *)&remote_pk[32], bt_mesh_private_key, dhkey);

    if (cb != NULL) {
        cb((const u8_t *)dhkey, idx);
    }
    return 0;
}