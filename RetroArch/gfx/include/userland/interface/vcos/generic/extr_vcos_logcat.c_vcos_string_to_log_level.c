
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_STATUS_T ;
typedef int VCOS_LOG_LEVEL_T ;


 int VCOS_EINVAL ;
 int VCOS_LOG_ERROR ;
 int VCOS_LOG_INFO ;
 int VCOS_LOG_NEVER ;
 int VCOS_LOG_TRACE ;
 int VCOS_LOG_WARN ;
 int VCOS_SUCCESS ;
 scalar_t__ strcmp (char const*,char*) ;

VCOS_STATUS_T vcos_string_to_log_level( const char *str, VCOS_LOG_LEVEL_T *level )
{
   if (strcmp(str,"error") == 0)
      *level = VCOS_LOG_ERROR;
   else if (strcmp(str,"never") == 0)
      *level = VCOS_LOG_NEVER;
   else if (strcmp(str,"warn") == 0)
      *level = VCOS_LOG_WARN;
   else if (strcmp(str,"warning") == 0)
      *level = VCOS_LOG_WARN;
   else if (strcmp(str,"info") == 0)
      *level = VCOS_LOG_INFO;
   else if (strcmp(str,"trace") == 0)
      *level = VCOS_LOG_TRACE;
   else
      return VCOS_EINVAL;

   return VCOS_SUCCESS;
}
