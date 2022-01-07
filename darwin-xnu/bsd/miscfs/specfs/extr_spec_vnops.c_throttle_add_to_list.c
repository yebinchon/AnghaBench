
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
struct _throttle_io_info_t {int * throttle_uthlist; int * throttle_last_IO_timestamp; int * throttle_start_IO_period_timestamp; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int uu_on_throttlelist; } ;


 scalar_t__ FALSE ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int THROTTLE_LEVEL_END ;
 size_t THROTTLE_LEVEL_NONE ;
 int THROTTLE_LEVEL_START ;
 int THROTTLE_LEVEL_THROTTLED ;
 scalar_t__ TRUE ;
 int throttle_timer_start (struct _throttle_io_info_t*,scalar_t__,int) ;
 int uu_throttlelist ;

__attribute__((used)) static int
throttle_add_to_list(struct _throttle_io_info_t *info, uthread_t ut, int mylevel, boolean_t insert_tail)
{
 boolean_t start_timer = FALSE;
 int level = THROTTLE_LEVEL_START;

 if (TAILQ_EMPTY(&info->throttle_uthlist[mylevel])) {
  info->throttle_start_IO_period_timestamp[mylevel] = info->throttle_last_IO_timestamp[mylevel];
  start_timer = TRUE;
 }

 if (insert_tail == TRUE)
  TAILQ_INSERT_TAIL(&info->throttle_uthlist[mylevel], ut, uu_throttlelist);
 else
  TAILQ_INSERT_HEAD(&info->throttle_uthlist[mylevel], ut, uu_throttlelist);

 ut->uu_on_throttlelist = mylevel;

 if (start_timer == TRUE) {

  level = throttle_timer_start(info, FALSE, THROTTLE_LEVEL_START);

  if (level == THROTTLE_LEVEL_END) {
   if (ut->uu_on_throttlelist >= THROTTLE_LEVEL_THROTTLED) {
    TAILQ_REMOVE(&info->throttle_uthlist[ut->uu_on_throttlelist], ut, uu_throttlelist);

    ut->uu_on_throttlelist = THROTTLE_LEVEL_NONE;
   }
  }
 }
 return (level);
}
