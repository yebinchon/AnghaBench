
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double speed; int* queue_serial; scalar_t__ paused; } ;
typedef TYPE_1__ Clock ;


 int NAN ;
 int set_clock (TYPE_1__*,int ,int) ;

__attribute__((used)) static void init_clock(Clock *c, int *queue_serial)
{
    c->speed = 1.0;
    c->paused = 0;
    c->queue_serial = queue_serial;
    set_clock(c, NAN, -1);
}
