#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_1__ ePICPixListElem ;
struct TYPE_7__ {int* bucket_fill; int* bucket_size; TYPE_4__** bucket; } ;
typedef  TYPE_2__ ePICPixHash ;
struct TYPE_8__ {TYPE_1__* list; } ;

/* Variables and functions */
 int EPIC_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__**) ; 

__attribute__((used)) static void FUNC2(ePICPixHash *hash)
{
    int i, j;

    for (i = 0; i < EPIC_HASH_SIZE; i++) {
        for (j = 0; j < hash->bucket_fill[i]; j++) {
            ePICPixListElem *list_elem = hash->bucket[i][j].list;
            while (list_elem) {
                ePICPixListElem *tmp = list_elem->next;
                FUNC0(list_elem);
                list_elem = tmp;
            }
        }
        FUNC1(&hash->bucket[i]);
        hash->bucket_size[i] =
        hash->bucket_fill[i] = 0;
    }
}