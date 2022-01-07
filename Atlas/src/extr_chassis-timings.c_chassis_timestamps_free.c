
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timestamps; } ;
typedef TYPE_1__ chassis_timestamps_t ;
typedef int chassis_timestamp_t ;


 int chassis_timestamp_free (int *) ;
 int g_free (TYPE_1__*) ;
 int g_queue_free (int ) ;
 int * g_queue_pop_head (int ) ;

void chassis_timestamps_free(chassis_timestamps_t *ts) {
 chassis_timestamp_t *t;

 while ((t = g_queue_pop_head(ts->timestamps))) chassis_timestamp_free(t);
 g_queue_free(ts->timestamps);
 g_free(ts);
}
