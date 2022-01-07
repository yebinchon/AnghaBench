
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool null_location_get_position(void *data, double *latitude,
      double *longitude, double *horiz_accuracy,
      double *vert_accuracy)
{
   *latitude = 0.0;
   *longitude = 0.0;
   *horiz_accuracy = 0.0;
   *vert_accuracy = 0.0;
   return 1;
}
