
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GX_CLIENT_STATE_T ;


 int gx_priv_restore (int *) ;

void gx_unbind_vg(GX_CLIENT_STATE_T *restore)
{
   gx_priv_restore(restore);
}
