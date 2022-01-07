
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;


 int MMAL_ENOMEM ;
 int MMAL_SUCCESS ;
 scalar_t__ asprintf (char**,char*,...) ;
 int free (char*) ;

MMAL_STATUS_T create_filenames(char** finalName, char** tempName, char * pattern, int frame)
{
   *finalName = ((void*)0);
   *tempName = ((void*)0);
   if (0 > asprintf(finalName, pattern, frame) ||
         0 > asprintf(tempName, "%s~", *finalName))
   {
      if (*finalName != ((void*)0))
      {
         free(*finalName);
      }
      return MMAL_ENOMEM;
   }
   return MMAL_SUCCESS;
}
