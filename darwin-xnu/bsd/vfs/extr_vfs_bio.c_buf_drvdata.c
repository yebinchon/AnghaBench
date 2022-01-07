
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_3__ {void* b_drvdata; } ;



void *
buf_drvdata(buf_t bp) {

        return (bp->b_drvdata);
}
