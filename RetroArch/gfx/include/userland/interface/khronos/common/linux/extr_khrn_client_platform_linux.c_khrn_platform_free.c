
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vcos_free (void*) ;

void khrn_platform_free(void *v)
{
   if (v)
   {
      vcos_free(v);
   }
}
