
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ f; } ;
typedef TYPE_1__ Benchmark ;


 int runbench (TYPE_1__*) ;

__attribute__((used)) static void
runallbench(Benchmark *b)
{
    for (; b->f; b++) {
        runbench(b);
    }
}
