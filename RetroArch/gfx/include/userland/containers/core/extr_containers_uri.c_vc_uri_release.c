
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_URI_PARTS_T ;


 int free (int *) ;
 int vc_uri_clear (int *) ;

void vc_uri_release( VC_URI_PARTS_T *p_uri )
{
   if (!p_uri)
      return;

   vc_uri_clear(p_uri);

   free(p_uri);
}
