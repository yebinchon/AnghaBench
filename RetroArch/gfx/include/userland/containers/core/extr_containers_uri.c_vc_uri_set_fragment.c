
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fragment; } ;
typedef TYPE_1__ VC_URI_PARTS_T ;


 int duplicate_string (char const*,int *) ;

bool vc_uri_set_fragment( VC_URI_PARTS_T *p_uri, const char *fragment )
{
   return p_uri ? duplicate_string(fragment, &p_uri->fragment) : 0;
}
