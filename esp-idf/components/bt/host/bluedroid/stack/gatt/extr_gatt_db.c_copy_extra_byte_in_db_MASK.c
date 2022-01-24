#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ mem_free; int /*<<< orphan*/ * p_free_mem; } ;
typedef  TYPE_1__ tGATT_SVC_DB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static BOOLEAN FUNC3(tGATT_SVC_DB *p_db, void **p_dst, UINT16 len)
{
    UINT8 *p = (UINT8 *)*p_dst;

    if (p_db->mem_free < len) {
        if (!FUNC1(p_db)) {
            FUNC0("copy_extra_byte_in_db failed, no resources\n");
            return FALSE;
        }
    }

    p = p_db->p_free_mem;
    p_db->p_free_mem += len;
    p_db->mem_free -= len;
    FUNC2((void *)p, 0, len);
    *p_dst = (void *)p;

    return TRUE;
}