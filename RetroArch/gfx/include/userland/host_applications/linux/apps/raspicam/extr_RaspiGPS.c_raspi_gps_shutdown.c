
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ gpsd_connected; } ;
struct TYPE_5__ {int terminated; int gps_cache_mutex; TYPE_1__ gpsd; int gps_reader_thread; scalar_t__ gps_reader_thread_ok; } ;


 int disconnect_gpsd (TYPE_1__*) ;
 int fprintf (int ,char*) ;
 TYPE_2__ gps_reader_data ;
 int libgps_unload (TYPE_1__*) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int stderr ;

void raspi_gps_shutdown(int verbose)
{
   gps_reader_data.terminated = 1;

   if (gps_reader_data.gps_reader_thread_ok)
   {
      if (verbose)
         fprintf(stderr, "Waiting for GPS reader thread to terminate\n");

      pthread_join(gps_reader_data.gps_reader_thread, ((void*)0));
   }
   if (verbose && gps_reader_data.gpsd.gpsd_connected)
      fprintf(stderr, "Closing gpsd connection\n\n");

   disconnect_gpsd(&gps_reader_data.gpsd);

   libgps_unload(&gps_reader_data.gpsd);

   pthread_mutex_destroy(&gps_reader_data.gps_cache_mutex);
}
