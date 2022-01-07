
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * renderchain_data; TYPE_1__* renderchain_driver; } ;
typedef TYPE_2__ d3d9_video_t ;
struct TYPE_4__ {int (* chain_free ) (int *) ;} ;


 int stub1 (int *) ;

__attribute__((used)) static void d3d9_deinit_chain(d3d9_video_t *d3d)
{
   if (!d3d || !d3d->renderchain_driver)
      return;

   if (d3d->renderchain_driver->chain_free)
      d3d->renderchain_driver->chain_free(d3d->renderchain_data);

   d3d->renderchain_driver = ((void*)0);
   d3d->renderchain_data = ((void*)0);
}
