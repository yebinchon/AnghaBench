
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GX_CLIENT_STATE_T ;


 int vcos_free (int *) ;

void gx_free_context(GX_CLIENT_STATE_T *state)
{
   vcos_free(state);
}
