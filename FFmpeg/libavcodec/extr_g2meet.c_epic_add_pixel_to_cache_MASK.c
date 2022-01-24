#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  pixel; } ;
typedef  TYPE_1__ ePICPixListElem ;
struct TYPE_7__ {TYPE_1__* list; } ;
typedef  TYPE_2__ ePICPixHashElem ;
typedef  int /*<<< orphan*/  ePICPixHash ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ePICPixHash *hash, uint32_t key, uint32_t pix)
{
    ePICPixListElem *new_elem;
    ePICPixHashElem *hash_elem = FUNC3(hash, key);

    if (!hash_elem) {
        if (!(hash_elem = FUNC2(hash, key)))
            return FUNC0(ENOMEM);
    }

    new_elem = FUNC1(sizeof(*new_elem));
    if (!new_elem)
        return FUNC0(ENOMEM);

    new_elem->pixel = pix;
    new_elem->next  = hash_elem->list;
    hash_elem->list = new_elem;

    return 0;
}