
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vss; } ;
typedef TYPE_1__ roar_t ;


 int ROAR_VS_TRUE ;
 int free (void*) ;
 int roar_vs_close (int ,int ,int *) ;

__attribute__((used)) static void ra_free(void *data)
{
   roar_t *roar = (roar_t*)data;
   roar_vs_close(roar->vss, ROAR_VS_TRUE, ((void*)0));
   free(data);
}
