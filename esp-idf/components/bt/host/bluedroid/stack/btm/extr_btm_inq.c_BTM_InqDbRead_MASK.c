#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  inq_info; } ;
typedef  TYPE_1__ tINQ_DB_ENT ;
typedef  int /*<<< orphan*/  tBTM_INQ_INFO ;
typedef  int /*<<< orphan*/ * BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

tBTM_INQ_INFO *FUNC2 (BD_ADDR p_bda)
{
    FUNC0 ("BTM_InqDbRead: bd addr [%02x%02x%02x%02x%02x%02x]\n",
                   p_bda[0], p_bda[1], p_bda[2], p_bda[3], p_bda[4], p_bda[5]);

    tINQ_DB_ENT *p_ent = FUNC1(p_bda);
    if (!p_ent) {
        return NULL;
    }

    return &p_ent->inq_info;
}