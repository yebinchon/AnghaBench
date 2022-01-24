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
struct socket {struct cfil_db* so_cfil_db; } ;
struct cfil_db {int /*<<< orphan*/ * cfdb_hashbase; int /*<<< orphan*/  cfdb_hashmask; struct socket* cfdb_so; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  CFILHASHSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  M_CFIL ; 
 int /*<<< orphan*/  FUNC1 (struct cfil_db*,int) ; 
 int /*<<< orphan*/  cfil_db_zone ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cfil_db* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cfil_db*) ; 

errno_t
FUNC5(struct socket *so)
{
    errno_t error = 0;
    struct cfil_db *db = NULL;
    
    FUNC0(LOG_INFO, "");
    
    db = FUNC3(cfil_db_zone);
    if (db == NULL) {
        error = ENOMEM;
        goto done;
    }
    FUNC1(db, sizeof(struct cfil_db));
    db->cfdb_so = so;
    db->cfdb_hashbase = FUNC2(CFILHASHSIZE, M_CFIL, &db->cfdb_hashmask);
    if (db->cfdb_hashbase == NULL) {
        FUNC4(cfil_db_zone, db);
        db = NULL;
        error = ENOMEM;
        goto done;
    }

    so->so_cfil_db = db;

done:
    return (error);
}