
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chassis_timestamps_t ;


 int * chassis_timestamps_global ;
 int g_free (int *) ;

void chassis_timestamps_global_free(chassis_timestamps_t *gl) {
 if (((void*)0) == gl) {
  g_free(chassis_timestamps_global);
 } else {
  g_free(gl);
 }
}
