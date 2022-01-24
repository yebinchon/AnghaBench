#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t slot; TYPE_1__* prev; struct TYPE_9__* next; int /*<<< orphan*/  wheel; } ;
typedef  TYPE_2__ tmr_obj_t ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; TYPE_2__** slots; } ;
typedef  TYPE_3__ time_wheel_t ;
struct TYPE_8__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_3__* wheels ; 

__attribute__((used)) static bool FUNC4(tmr_obj_t* timer) {
  if (timer->wheel >= FUNC2(wheels)) {
    return false;
  }
  time_wheel_t* wheel = wheels + timer->wheel;

  bool removed = false;
  FUNC0(&wheel->mutex);
  // other thread may modify timer->wheel, check again.
  if (timer->wheel < FUNC2(wheels)) {
    if (timer->prev != NULL) {
      timer->prev->next = timer->next;
    }
    if (timer->next != NULL) {
      timer->next->prev = timer->prev;
    }
    if (timer == wheel->slots[timer->slot]) {
      wheel->slots[timer->slot] = timer->next;
    }
    timer->wheel = FUNC2(wheels);
    timer->next = NULL;
    timer->prev = NULL;
    FUNC3(timer);
    removed = true;
  }
  FUNC1(&wheel->mutex);

  return removed;
}