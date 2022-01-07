
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_flags; } ;


 int B_INVAL ;
 int SET (int ,int ) ;

void
buf_markinvalid(buf_t bp) {

        SET(bp->b_flags, B_INVAL);
}
