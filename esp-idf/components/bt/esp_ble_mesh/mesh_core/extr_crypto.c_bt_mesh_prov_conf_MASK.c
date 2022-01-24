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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,struct bt_mesh_sg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(const u8_t conf_key[16], const u8_t rand[16],
                      const u8_t auth[16], u8_t conf[16])
{
    struct bt_mesh_sg sg[] = { { rand, 16 }, { auth, 16 } };

    FUNC1("ConfirmationKey %s", FUNC2(conf_key, 16));
    FUNC1("RandomDevice %s", FUNC2(rand, 16));
    FUNC1("AuthValue %s", FUNC2(auth, 16));

    return FUNC3(conf_key, sg, FUNC0(sg), conf);
}