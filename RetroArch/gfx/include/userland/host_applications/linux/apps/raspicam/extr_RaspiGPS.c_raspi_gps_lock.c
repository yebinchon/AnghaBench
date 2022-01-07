
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gps_data_t {int dummy; } ;
struct TYPE_2__ {struct gps_data_t gpsdata_cache; int gps_cache_mutex; } ;


 TYPE_1__ gps_reader_data ;
 int pthread_mutex_lock (int *) ;

struct gps_data_t *raspi_gps_lock()
{
   pthread_mutex_lock(&gps_reader_data.gps_cache_mutex);
   return &gps_reader_data.gpsdata_cache;
}
