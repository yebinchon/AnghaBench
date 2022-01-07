
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int daddr64_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_blkno; } ;



void
buf_setblkno(buf_t bp, daddr64_t blkno) {

        bp->b_blkno = blkno;
}
