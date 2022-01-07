
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* path_extension; char* path; } ;
typedef TYPE_1__ VC_URI_PARTS_T ;


 int strlen (char*) ;

__attribute__((used)) static void vc_uri_set_path_extension(VC_URI_PARTS_T *p_uri)
{
   char *end;

   if (!p_uri)
      return;

   p_uri->path_extension = ((void*)0);

   if (!p_uri->path)
      return;


   for (end = p_uri->path + strlen(p_uri->path); *end != '.'; end--)
      if (end == p_uri->path || *end == '/' || *end == '\\')
         return;

   p_uri->path_extension = end + 1;
}
