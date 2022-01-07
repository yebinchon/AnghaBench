
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; } ;
typedef TYPE_1__ VC_URI_PARTS_T ;


 int duplicate_string (char const*,int *) ;

bool vc_uri_set_port( VC_URI_PARTS_T *p_uri, const char *port )
{
   return p_uri ? duplicate_string(port, &p_uri->port) : 0;
}
