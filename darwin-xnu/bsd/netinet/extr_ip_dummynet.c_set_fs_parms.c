
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_flow_set {int flags_fs; int qsize; int flow_mask; int plr; } ;


 int DN_IS_RED ;
 int DN_QSIZE_IS_BYTES ;
 int config_red (struct dn_flow_set*,struct dn_flow_set*) ;

__attribute__((used)) static void
set_fs_parms(struct dn_flow_set *x, struct dn_flow_set *src)
{
    x->flags_fs = src->flags_fs;
    x->qsize = src->qsize;
    x->plr = src->plr;
    x->flow_mask = src->flow_mask;
    if (x->flags_fs & DN_QSIZE_IS_BYTES) {
 if (x->qsize > 1024*1024)
     x->qsize = 1024*1024 ;
    } else {
 if (x->qsize == 0)
     x->qsize = 50 ;
 if (x->qsize > 100)
     x->qsize = 50 ;
    }

    if ( x->flags_fs & DN_IS_RED )
 config_red(src, x) ;
}
