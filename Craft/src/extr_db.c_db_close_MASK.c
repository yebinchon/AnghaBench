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

/* Variables and functions */
 int /*<<< orphan*/  db ; 
 int /*<<< orphan*/  db_enabled ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  delete_sign_stmt ; 
 int /*<<< orphan*/  delete_signs_stmt ; 
 int /*<<< orphan*/  get_key_stmt ; 
 int /*<<< orphan*/  insert_block_stmt ; 
 int /*<<< orphan*/  insert_light_stmt ; 
 int /*<<< orphan*/  insert_sign_stmt ; 
 int /*<<< orphan*/  load_blocks_stmt ; 
 int /*<<< orphan*/  load_lights_stmt ; 
 int /*<<< orphan*/  load_signs_stmt ; 
 int /*<<< orphan*/  set_key_stmt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4() {
    if (!db_enabled) {
        return;
    }
    FUNC0();
    FUNC2(db, "commit;", NULL, NULL, NULL);
    FUNC3(insert_block_stmt);
    FUNC3(insert_light_stmt);
    FUNC3(insert_sign_stmt);
    FUNC3(delete_sign_stmt);
    FUNC3(delete_signs_stmt);
    FUNC3(load_blocks_stmt);
    FUNC3(load_lights_stmt);
    FUNC3(load_signs_stmt);
    FUNC3(get_key_stmt);
    FUNC3(set_key_stmt);
    FUNC1(db);
}