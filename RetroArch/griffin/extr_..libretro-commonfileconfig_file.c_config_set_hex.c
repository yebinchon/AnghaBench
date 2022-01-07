
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_file_t ;
typedef int buf ;


 int config_set_string (int *,char const*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

void config_set_hex(config_file_t *conf, const char *key, unsigned val)
{
   char buf[128];

   buf[0] = '\0';
   snprintf(buf, sizeof(buf), "%x", val);
   config_set_string(conf, key, buf);
}
