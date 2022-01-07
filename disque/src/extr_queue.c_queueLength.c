
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sl; } ;
typedef TYPE_1__ queue ;


 unsigned long skiplistLength (int ) ;

unsigned long queueLength(queue *q) {
    if (!q) return 0;
    return skiplistLength(q->sl);
}
