
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {int mc_private; int (* mc_slab_notify ) (int ,int ) ;} ;
typedef TYPE_1__ mcache_t ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void
mcache_notify(mcache_t *cp, u_int32_t event)
{
 if (cp->mc_slab_notify != ((void*)0))
  (*cp->mc_slab_notify)(cp->mc_private, event);
}
