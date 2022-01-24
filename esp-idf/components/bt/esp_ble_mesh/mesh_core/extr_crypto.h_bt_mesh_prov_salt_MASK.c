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
typedef  int /*<<< orphan*/  u8_t ;
struct bt_mesh_sg {int member_1; int /*<<< orphan*/  const* member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bt_mesh_sg*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,struct bt_mesh_sg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(const u8_t conf_salt[16],
                                    const u8_t prov_rand[16],
                                    const u8_t dev_rand[16],
                                    u8_t prov_salt[16])
{
    const u8_t prov_salt_key[16] = { 0 };
    struct bt_mesh_sg sg[] = {
        { conf_salt, 16 },
        { prov_rand, 16 },
        { dev_rand, 16 },
    };

    return FUNC1(prov_salt_key, sg, FUNC0(sg), prov_salt);
}