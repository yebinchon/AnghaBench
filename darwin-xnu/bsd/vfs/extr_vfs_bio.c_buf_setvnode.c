
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vnode_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_vp; } ;



void
buf_setvnode(buf_t bp, vnode_t vp) {

        bp->b_vp = vp;
}
