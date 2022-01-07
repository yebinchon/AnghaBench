
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext_lower ;
typedef enum rarch_content_type { ____Placeholder_rarch_content_type } rarch_content_type ;
 int RARCH_CONTENT_GONG ;
 int RARCH_CONTENT_IMAGE ;
 int RARCH_CONTENT_MOVIE ;
 int RARCH_CONTENT_MUSIC ;
 int RARCH_CONTENT_NONE ;
 int msg_hash_calculate (char*) ;
 int msg_hash_to_file_type (int ) ;
 int path_get_extension (char const*) ;
 int string_to_lower (char*) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ strstr (char const*,char*) ;

enum rarch_content_type path_is_media_type(const char *path)
{
   char ext_lower[128];

   ext_lower[0] = '\0';

   strlcpy(ext_lower, path_get_extension(path), sizeof(ext_lower));

   string_to_lower(ext_lower);


   if (
      strstr(path, "udp://") ||
      strstr(path, "http://") ||
      strstr(path, "https://")||
      strstr(path, "tcp://") ||
      strstr(path, "rtmp://") ||
      strstr(path, "rtp://")
   )
      return RARCH_CONTENT_MOVIE;

   switch (msg_hash_to_file_type(msg_hash_calculate(ext_lower)))
   {
      case 141:
      default:
         break;
   }

   return RARCH_CONTENT_NONE;
}
