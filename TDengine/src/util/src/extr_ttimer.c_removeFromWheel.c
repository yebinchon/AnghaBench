
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t slot; TYPE_1__* prev; struct TYPE_9__* next; int wheel; } ;
typedef TYPE_2__ tmr_obj_t ;
struct TYPE_10__ {int mutex; TYPE_2__** slots; } ;
typedef TYPE_3__ time_wheel_t ;
struct TYPE_8__ {TYPE_2__* next; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tListLen (TYPE_3__*) ;
 int timerDecRef (TYPE_2__*) ;
 TYPE_3__* wheels ;

__attribute__((used)) static bool removeFromWheel(tmr_obj_t* timer) {
  if (timer->wheel >= tListLen(wheels)) {
    return 0;
  }
  time_wheel_t* wheel = wheels + timer->wheel;

  bool removed = 0;
  pthread_mutex_lock(&wheel->mutex);

  if (timer->wheel < tListLen(wheels)) {
    if (timer->prev != ((void*)0)) {
      timer->prev->next = timer->next;
    }
    if (timer->next != ((void*)0)) {
      timer->next->prev = timer->prev;
    }
    if (timer == wheel->slots[timer->slot]) {
      wheel->slots[timer->slot] = timer->next;
    }
    timer->wheel = tListLen(wheels);
    timer->next = ((void*)0);
    timer->prev = ((void*)0);
    timerDecRef(timer);
    removed = 1;
  }
  pthread_mutex_unlock(&wheel->mutex);

  return removed;
}
