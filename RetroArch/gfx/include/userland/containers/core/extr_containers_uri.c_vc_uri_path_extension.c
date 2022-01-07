
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* path_extension; } ;
typedef TYPE_1__ VC_URI_PARTS_T ;



const char *vc_uri_path_extension( const VC_URI_PARTS_T *p_uri )
{
   return p_uri ? p_uri->path_extension : ((void*)0);
}
