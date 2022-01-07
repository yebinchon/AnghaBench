
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_3__ {uintptr_t b_datap; } ;



void
buf_setdataptr(buf_t bp, uintptr_t data) {

        bp->b_datap = data;
}
