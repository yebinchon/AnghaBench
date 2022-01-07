
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int userinfo; } ;
typedef TYPE_1__ VC_URI_PARTS_T ;


 int duplicate_string (char const*,int *) ;

bool vc_uri_set_userinfo( VC_URI_PARTS_T *p_uri, const char *userinfo )
{
   return p_uri ? duplicate_string(userinfo, &p_uri->userinfo) : 0;
}
