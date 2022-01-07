
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* audio_device; } ;
struct TYPE_5__ {TYPE_1__ arrays; } ;
typedef TYPE_2__ settings_t ;


 TYPE_2__* config_get_ptr () ;
 int free (char*) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static int parse_ports(char **dest_ports, const char **jports)
{
   int i;
   char *save = ((void*)0);
   int parsed = 0;
   settings_t *settings = config_get_ptr();
   char *audio_device_cpy = strdup(settings->arrays.audio_device);
   const char *con = strtok_r(audio_device_cpy, ",", &save);

   if (con)
      dest_ports[parsed++] = strdup(con);
   con = strtok_r(((void*)0), ",", &save);
   if (con)
      dest_ports[parsed++] = strdup(con);

   for (i = parsed; i < 2; i++)
      dest_ports[i] = strdup(jports[i]);

   free(audio_device_cpy);
   return 2;
}
