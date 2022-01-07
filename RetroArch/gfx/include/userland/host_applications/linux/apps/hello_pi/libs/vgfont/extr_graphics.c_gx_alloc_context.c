
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GX_CLIENT_STATE_T ;


 int * vcos_calloc (int,int,char*) ;

GX_CLIENT_STATE_T *gx_alloc_context(void)
{
   GX_CLIENT_STATE_T *ret = vcos_calloc(1,sizeof(*ret), "gx_client_state");
   return ret;
}
