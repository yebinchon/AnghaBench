
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
typedef TYPE_1__ config_file_t ;


 int strlcpy (char*,int ,size_t) ;

bool config_get_config_path(config_file_t *conf, char *s, size_t len)
{
   if (!conf)
      return 0;
   return strlcpy(s, conf->path, len);
}
