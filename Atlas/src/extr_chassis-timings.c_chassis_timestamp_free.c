
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chassis_timestamp_t ;


 int g_free (int *) ;

void chassis_timestamp_free(chassis_timestamp_t *ts) {
 g_free(ts);
}
