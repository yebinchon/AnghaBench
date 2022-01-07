
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfx_ctx_ps3_data_t ;


 int free (void*) ;
 int gfx_ctx_ps3_destroy_resources (int *) ;

__attribute__((used)) static void gfx_ctx_ps3_destroy(void *data)
{
   gfx_ctx_ps3_data_t *ps3 = (gfx_ctx_ps3_data_t*)data;

   if (!ps3)
      return;

   gfx_ctx_ps3_destroy_resources(ps3);
   free(data);
}
