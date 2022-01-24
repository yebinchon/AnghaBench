#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  (* bt_mesh_dh_key_cb_t ) (int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ;
struct TYPE_6__ {int /*<<< orphan*/  const* x; int /*<<< orphan*/  const* y; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ Point ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  const* BT_OCTET32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 size_t BT_OCTET32_LEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_LENGTH_DWORDS_P256 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* bt_mesh_private_key ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC4(const u8_t remote_pk[64], bt_mesh_dh_key_cb_t cb, const u8_t idx)
{
    BT_OCTET32 private_key = {0};
    Point peer_pub_key = {0};
    Point new_pub_key = {0};

    FUNC0("private key = %s", FUNC2(bt_mesh_private_key, BT_OCTET32_LEN));

    FUNC3(private_key, bt_mesh_private_key, BT_OCTET32_LEN);
    FUNC3(peer_pub_key.x, remote_pk, BT_OCTET32_LEN);
    FUNC3(peer_pub_key.y, &remote_pk[BT_OCTET32_LEN], BT_OCTET32_LEN);

    FUNC0("remote public key x = %s", FUNC2(peer_pub_key.x, BT_OCTET32_LEN));
    FUNC0("remote public key y = %s", FUNC2(peer_pub_key.y, BT_OCTET32_LEN));

    FUNC1(&new_pub_key, &peer_pub_key, (DWORD *)private_key, KEY_LENGTH_DWORDS_P256);

    FUNC0("new public key x = %s", FUNC2(new_pub_key.x, 32));
    FUNC0("new public key y = %s", FUNC2(new_pub_key.y, 32));

    if (cb != NULL) {
        cb((const u8_t *)new_pub_key.x, idx);
    }

    return 0;
}