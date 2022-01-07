
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_resid; } ;



void
buf_setresid(buf_t bp, uint32_t resid) {

        bp->b_resid = resid;
}
