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
typedef  int /*<<< orphan*/  destructor_t ;
typedef  int /*<<< orphan*/  constructor_t ;
struct TYPE_4__ {void** data; int capacity; int /*<<< orphan*/  destructor; int /*<<< orphan*/  constructor; scalar_t__ size; } ;
typedef  TYPE_1__ MyList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 

void FUNC3(MyList **list_p, int initial_capacity,
      constructor_t constructor, destructor_t destructor)
{
   MyList *list        = NULL;

   if (!list_p)
      return;

   if (initial_capacity < 0)
      initial_capacity = 0;

   list                = *list_p;
   if (list)
      FUNC2(list_p);

   list               = (MyList*)FUNC1(sizeof(MyList));
   *list_p            = list;
   list->size         = 0;
   list->constructor  = constructor;
   list->destructor   = destructor;

   if (initial_capacity > 0)
   {
      list->data      = (void**)FUNC0(initial_capacity, sizeof(void*));
      list->capacity  = initial_capacity;
   }
   else
   {
      list->data      = NULL;
      list->capacity  = 0;
   }
}