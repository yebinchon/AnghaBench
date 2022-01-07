
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int libgps_handle; int gps_stream; int gps_errstr; int gps_close; int gps_open; int gps_waiting; int gps_read; } ;
typedef TYPE_1__ gpsd_info ;


 int LIBGPS_FILE ;
 int RTLD_LAZY ;
 char* dlerror () ;
 int dlopen (int ,int ) ;
 int fprintf (int ,char*,char*) ;
 int libgps_load_sym (void**,int ,char*) ;
 int stderr ;

int libgps_load(gpsd_info *gpsd)
{
   int err = 0;

   gpsd->libgps_handle = dlopen(LIBGPS_FILE, RTLD_LAZY);
   if (!gpsd->libgps_handle)
   {
      fprintf(stderr, "%s\n", dlerror());
      return -1;
   }

   err |= libgps_load_sym((void **)(&gpsd->gps_read), gpsd->libgps_handle, "gps_read");
   err |= libgps_load_sym((void **)(&gpsd->gps_waiting), gpsd->libgps_handle, "gps_waiting");
   err |= libgps_load_sym((void **)(&gpsd->gps_open), gpsd->libgps_handle, "gps_open");
   err |= libgps_load_sym((void **)(&gpsd->gps_close), gpsd->libgps_handle, "gps_close");
   err |= libgps_load_sym((void **)(&gpsd->gps_errstr), gpsd->libgps_handle, "gps_errstr");
   err |= libgps_load_sym((void **)(&gpsd->gps_stream), gpsd->libgps_handle, "gps_stream");
   if (err)
      return -1;

   return 0;
}
