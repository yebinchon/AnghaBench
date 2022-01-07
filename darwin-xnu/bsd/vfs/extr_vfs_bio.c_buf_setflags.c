
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_flags; } ;


 int BUF_X_WRFLAGS ;
 int SET (int ,int) ;

void
buf_setflags(buf_t bp, int32_t flags) {

        SET(bp->b_flags, (flags & BUF_X_WRFLAGS));
}
