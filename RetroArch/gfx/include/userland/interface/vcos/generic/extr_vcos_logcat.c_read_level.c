
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int VCOS_LOG_LEVEL_T ;


 scalar_t__ VCOS_SUCCESS ;
 scalar_t__ read_tok (char*,int,char const**,char) ;
 int vcos_log (char*,char*) ;
 scalar_t__ vcos_string_to_log_level (char*,int *) ;

__attribute__((used)) static int read_level(VCOS_LOG_LEVEL_T *level, const char **pstr, char sep)
{
   char buf[16];
   int ret = 1;
   if (read_tok(buf,sizeof(buf),pstr,sep))
   {
      if (vcos_string_to_log_level(buf,level) != VCOS_SUCCESS)
      {
         vcos_log("Invalid trace level '%s'\n", buf);
         ret = 0;
      }
   }
   else
   {
      ret = 0;
   }
   return ret;
}
