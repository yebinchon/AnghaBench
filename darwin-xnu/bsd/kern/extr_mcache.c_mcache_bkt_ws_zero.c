
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bl_total; int bl_min; int bl_reaplimit; } ;
struct TYPE_6__ {int bl_total; int bl_min; int bl_reaplimit; } ;
struct TYPE_7__ {int mc_bkt_lock; TYPE_1__ mc_empty; TYPE_2__ mc_full; } ;
typedef TYPE_3__ mcache_t ;


 int MCACHE_LOCK (int *) ;
 int MCACHE_UNLOCK (int *) ;

__attribute__((used)) static void
mcache_bkt_ws_zero(mcache_t *cp)
{
 MCACHE_LOCK(&cp->mc_bkt_lock);

 cp->mc_full.bl_reaplimit = cp->mc_full.bl_total;
 cp->mc_full.bl_min = cp->mc_full.bl_total;
 cp->mc_empty.bl_reaplimit = cp->mc_empty.bl_total;
 cp->mc_empty.bl_min = cp->mc_empty.bl_total;

 MCACHE_UNLOCK(&cp->mc_bkt_lock);
}
