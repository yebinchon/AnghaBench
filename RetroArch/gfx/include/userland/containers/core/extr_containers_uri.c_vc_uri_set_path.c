
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; } ;
typedef TYPE_1__ VC_URI_PARTS_T ;


 int duplicate_string (char const*,int *) ;
 int vc_uri_set_path_extension (TYPE_1__*) ;

bool vc_uri_set_path( VC_URI_PARTS_T *p_uri, const char *path )
{
   bool ret = p_uri ? duplicate_string(path, &p_uri->path) : 0;
   vc_uri_set_path_extension(p_uri);
   return ret;
}
