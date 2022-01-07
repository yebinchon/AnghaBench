
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gps_cache_mutex; } ;


 TYPE_1__ gps_reader_data ;
 int pthread_mutex_unlock (int *) ;

void raspi_gps_unlock()
{
   pthread_mutex_unlock(&gps_reader_data.gps_cache_mutex);
}
