
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ expireAt; int wheel; struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef TYPE_1__ tmr_obj_t ;
struct TYPE_7__ {scalar_t__ nextScanAt; int index; int size; scalar_t__ resolution; int mutex; TYPE_1__** slots; } ;
typedef TYPE_2__ time_wheel_t ;
typedef scalar_t__ int64_t ;


 int addToExpired (TYPE_1__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tListLen (TYPE_2__*) ;
 scalar_t__ taosGetTimestampMs () ;
 TYPE_2__* wheels ;

__attribute__((used)) static void taosTimerLoopFunc(int signo) {
  int64_t now = taosGetTimestampMs();

  for (int i = 0; i < tListLen(wheels); i++) {




    tmr_obj_t* expired = ((void*)0);

    time_wheel_t* wheel = wheels + i;
    while (now >= wheel->nextScanAt) {
      pthread_mutex_lock(&wheel->mutex);
      wheel->index = (wheel->index + 1) % wheel->size;
      tmr_obj_t* timer = wheel->slots[wheel->index];
      while (timer != ((void*)0)) {
        tmr_obj_t* next = timer->next;
        if (now < timer->expireAt) {
          timer = next;
          continue;
        }


        if (timer->prev == ((void*)0)) {
          wheel->slots[wheel->index] = next;
          if (next != ((void*)0)) {
            next->prev = ((void*)0);
          }
        } else {
          timer->prev->next = next;
          if (next != ((void*)0)) {
            next->prev = timer->prev;
          }
        }
        timer->wheel = tListLen(wheels);


        timer->next = expired;
        timer->prev = ((void*)0);
        if (expired != ((void*)0)) {
          expired->prev = timer;
        }
        expired = timer;

        timer = next;
      }
      pthread_mutex_unlock(&wheel->mutex);
      wheel->nextScanAt += wheel->resolution;
    }

    addToExpired(expired);
  }
}
