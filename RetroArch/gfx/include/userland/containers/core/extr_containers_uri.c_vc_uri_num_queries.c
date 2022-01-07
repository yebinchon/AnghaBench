
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int num_queries; } ;
typedef TYPE_1__ VC_URI_PARTS_T ;



uint32_t vc_uri_num_queries( const VC_URI_PARTS_T *p_uri )
{
   return p_uri ? p_uri->num_queries : 0;
}
