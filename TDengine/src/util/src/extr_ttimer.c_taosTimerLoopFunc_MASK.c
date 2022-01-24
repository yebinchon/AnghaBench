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
struct TYPE_6__ {scalar_t__ expireAt; int wheel; struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef  TYPE_1__ tmr_obj_t ;
struct TYPE_7__ {scalar_t__ nextScanAt; int index; int size; scalar_t__ resolution; int /*<<< orphan*/  mutex; TYPE_1__** slots; } ;
typedef  TYPE_2__ time_wheel_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_2__* wheels ; 

__attribute__((used)) static void FUNC5(int signo) {
  int64_t now = FUNC4();

  for (int i = 0; i < FUNC3(wheels); i++) {
    // `expried` is a temporary expire list.
    // expired timers are first add to this list, then move
    // to expired queue as a batch to improve performance.
    // note this list is used as a stack in this function.
    tmr_obj_t* expired = NULL;

    time_wheel_t* wheel = wheels + i;
    while (now >= wheel->nextScanAt) {
      FUNC1(&wheel->mutex);
      wheel->index = (wheel->index + 1) % wheel->size;
      tmr_obj_t* timer = wheel->slots[wheel->index];
      while (timer != NULL) {
        tmr_obj_t* next = timer->next;
        if (now < timer->expireAt) {
          timer = next;
          continue;
        }

        // remove from the wheel
        if (timer->prev == NULL) {
          wheel->slots[wheel->index] = next;
          if (next != NULL) {
            next->prev = NULL;
          }
        } else {
          timer->prev->next = next;
          if (next != NULL) {
            next->prev = timer->prev;
          }
        }
        timer->wheel = FUNC3(wheels);

        // add to temporary expire list
        timer->next = expired;
        timer->prev = NULL;
        if (expired != NULL) {
          expired->prev = timer;
        }
        expired = timer;

        timer = next;
      }
      FUNC2(&wheel->mutex);
      wheel->nextScanAt += wheel->resolution;
    }

    FUNC0(expired);
  }
}