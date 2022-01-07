
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rsound_t ;
typedef enum rsd_format { ____Placeholder_rsd_format } rsd_format ;


 int RSD_CHANNELS ;
 int RSD_FORMAT ;
 int RSD_HOST ;
 int RSD_IDENTITY ;
 int RSD_PORT ;
 int RSD_SAMPLERATE ;
 int rsd_free (int *) ;
 scalar_t__ rsd_init (int **) ;
 scalar_t__ rsd_set_param (int *,int ,int*) ;
 scalar_t__ rsd_start (int *) ;

int rsd_simple_start(rsound_t** rsound, const char* host, const char* port, const char* ident,
                     int rate, int channels, enum rsd_format format)
{
   if ( rsd_init(rsound) < 0 )
      return -1;

   int fmt = format;

   if ( host != ((void*)0) )
      rsd_set_param(*rsound, RSD_HOST, (void*)host);
   if ( port != ((void*)0) )
      rsd_set_param(*rsound, RSD_PORT, (void*)port);
   if ( ident != ((void*)0) )
      rsd_set_param(*rsound, RSD_IDENTITY, (void*)ident);

   if ( rsd_set_param(*rsound, RSD_SAMPLERATE, &rate) < 0 ||
         rsd_set_param(*rsound, RSD_CHANNELS, &channels) < 0 ||
         rsd_set_param(*rsound, RSD_FORMAT, &fmt) < 0 )
   {
      rsd_free(*rsound);
      return -1;
   }

   if ( rsd_start(*rsound) < 0 )
   {
      rsd_free(*rsound);
      return -1;
   }

   return 0;
}
