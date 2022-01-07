
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aio_total_count; } ;


 int OSDecrementAtomic (int *) ;
 TYPE_1__ aio_anchor ;
 int panic (char*) ;

__attribute__((used)) static int
aio_decrement_total_count()
{
 int old = OSDecrementAtomic(&aio_anchor.aio_total_count);
 if (old <= 0) {
  panic("Negative total AIO count!\n");
 }

 return old;
}
