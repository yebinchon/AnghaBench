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
typedef  int /*<<< orphan*/  const u8_t ;
typedef  int /*<<< orphan*/  u32_t ;
struct bt_mesh_subnet_keys {int /*<<< orphan*/  const* net_id; int /*<<< orphan*/  beacon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static bool FUNC4(struct bt_mesh_subnet_keys *keys,
                       const u8_t net_id[8], u8_t flags,
                       u32_t iv_index, const u8_t auth[8])
{
    u8_t net_auth[8];

    if (FUNC3(net_id, keys->net_id, 8)) {
        return false;
    }

    FUNC2(keys->beacon, flags, keys->net_id, iv_index,
                        net_auth);

    if (FUNC3(auth, net_auth, 8)) {
        FUNC0("Authentication Value %s != %s",
                FUNC1(auth, 8), FUNC1(net_auth, 8));
        return false;
    }

    return true;
}