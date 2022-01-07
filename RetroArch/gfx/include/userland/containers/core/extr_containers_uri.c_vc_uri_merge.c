
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* scheme; char* host; char* port; char* userinfo; char* path; } ;
typedef TYPE_1__ VC_URI_PARTS_T ;


 int duplicate_string (char*,char**) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;
 int strncat (char*,char const*,size_t) ;
 int strncpy (char*,char const*,size_t) ;
 char* strrchr (char*,char) ;
 int vc_uri_copy_base_path (TYPE_1__ const*,TYPE_1__*) ;
 int vc_uri_remove_double_dot_segments (char*) ;
 int vc_uri_remove_single_dot_segments (char*) ;

bool vc_uri_merge( const VC_URI_PARTS_T *base_uri, VC_URI_PARTS_T *relative_uri )
{
   bool success = 1;
   const char *relative_path;


   if (relative_uri->scheme)
      return 1;


   if (!duplicate_string(base_uri->scheme, &relative_uri->scheme))
      return 0;


   if (relative_uri->host || relative_uri->port || relative_uri->userinfo)
      return 1;


   if (!duplicate_string(base_uri->host, &relative_uri->host) ||
         !duplicate_string(base_uri->port, &relative_uri->port) ||
         !duplicate_string(base_uri->userinfo, &relative_uri->userinfo))
      return 0;

   relative_path = relative_uri->path;

   if (!relative_path || !*relative_path)
   {

      success = vc_uri_copy_base_path(base_uri, relative_uri);
   }
   else if (*relative_path != '/')
   {
      const char *base_path = base_uri->path;
      char *merged_path;
      char *slash;
      size_t len;


      if (!base_path || !*base_path)
      {
         if (relative_uri->host || relative_uri->port || relative_uri->userinfo)
            base_path = "/";
         else
            base_path = "";
      }

      len = strlen(base_path) + strlen(relative_path) + 1;


      merged_path = (char *)malloc(len);
      if (!merged_path)
         return 0;

      strncpy(merged_path, base_path, len);

      slash = strrchr(merged_path, '/');
      if (*relative_path == ';')
      {
         char *semi;


         if (!slash)
            slash = merged_path;
         semi = strchr(slash, ';');
         if (semi)
            semi[0] = '\0';
      } else {

         if (slash)
            slash[1] = '\0';
         else
            merged_path[0] = '\0';
      }
      strncat(merged_path, relative_path, len - strlen(merged_path) - 1);

      vc_uri_remove_single_dot_segments(merged_path);
      vc_uri_remove_double_dot_segments(merged_path);

      success = duplicate_string(merged_path, &relative_uri->path);

      free(merged_path);
   }


   return success;
}
