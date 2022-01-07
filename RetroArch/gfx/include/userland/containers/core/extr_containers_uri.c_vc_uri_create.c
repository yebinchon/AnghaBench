
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_URI_PARTS_T ;


 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;

VC_URI_PARTS_T *vc_uri_create( void )
{
   VC_URI_PARTS_T *p_uri;

   p_uri = (VC_URI_PARTS_T *)malloc(sizeof(VC_URI_PARTS_T));
   if (p_uri)
   {
      memset(p_uri, 0, sizeof(VC_URI_PARTS_T));
   }

   return p_uri;
}
