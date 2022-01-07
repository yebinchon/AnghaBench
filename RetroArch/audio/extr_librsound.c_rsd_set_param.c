
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int rate; int channels; int buffer_size; int max_latency; int samplesize; char* identity; scalar_t__ format; int * port; int * host; } ;
typedef TYPE_1__ rsound_t ;
typedef enum rsd_settings { ____Placeholder_rsd_settings } rsd_settings ;
 scalar_t__ RSD_S16_LE ;

 int free (int *) ;
 int retro_assert (int ) ;
 void* rsnd_format_to_samplesize (scalar_t__) ;
 void* strdup (char*) ;
 int strlcpy (char*,void*,int) ;

int rsd_set_param(rsound_t *rd, enum rsd_settings option, void* param)
{
 retro_assert(rd != ((void*)0));
 retro_assert(param != ((void*)0));
 int retval = 0;

 switch(option)
 {
  case 128:
   if ( *(int*)param > 0 )
   {
    rd->rate = *((int*)param);
    break;
   }
   else
    retval = -1;
   break;
  case 134:
   if ( *(int*)param > 0 )
   {
    rd->channels = *((int*)param);
    break;
   }
   else
    retval = -1;
   break;
  case 132:
   if ( rd->host != ((void*)0) )
    free(rd->host);
   rd->host = strdup((char*)param);
   break;
  case 129:
   if ( rd->port != ((void*)0) )
    free(rd->port);
   rd->port = strdup((char*)param);
   break;
  case 135:
   if ( *(int*)param > 0 )
   {
    rd->buffer_size = *((int*)param);
    break;
   }
   else
    retval = -1;
   break;
  case 130:
   rd->max_latency = *((int*)param);
   break;


  case 133:
   rd->format = (uint16_t)(*((int*)param));
   rd->samplesize = rsnd_format_to_samplesize(rd->format);

   if ( rd->samplesize == -1 )
   {
    rd->format = RSD_S16_LE;
    rd->samplesize = rsnd_format_to_samplesize(RSD_S16_LE);
    *((int*)param) = (int)RSD_S16_LE;
   }
   break;

  case 131:
   strlcpy(rd->identity, param, sizeof(rd->identity));
   rd->identity[sizeof(rd->identity)-1] = '\0';
   break;

  default:
   retval = -1;
 }

 return retval;
}
