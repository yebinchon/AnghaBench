
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gint ;
struct TYPE_3__ {int timestamps; } ;
typedef TYPE_1__ chassis_timestamps_t ;
typedef int chassis_timestamp_t ;


 int chassis_timestamp_init_now (int *,char const*,char const*,int ) ;
 int * chassis_timestamp_new () ;
 int g_queue_push_tail (int ,int *) ;

void chassis_timestamps_add(chassis_timestamps_t *ts,
  const char *name,
  const char *filename,
  gint line) {
 chassis_timestamp_t *t;

 t = chassis_timestamp_new();
 chassis_timestamp_init_now(t, name, filename, line);

 g_queue_push_tail(ts->timestamps, t);
}
