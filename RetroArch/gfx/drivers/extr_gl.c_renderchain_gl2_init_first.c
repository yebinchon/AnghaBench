
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gl2_renderchain_data_t ;


 scalar_t__ calloc (int,int) ;

__attribute__((used)) static bool renderchain_gl2_init_first(void **renderchain_handle)
{
   gl2_renderchain_data_t *data = (gl2_renderchain_data_t *)calloc(1, sizeof(*data));

   if (!data)
      return 0;

   *renderchain_handle = data;
   return 1;
}
