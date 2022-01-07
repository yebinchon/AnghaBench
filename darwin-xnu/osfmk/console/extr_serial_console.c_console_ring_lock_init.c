
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write_lock; int read_lock; } ;


 TYPE_1__ console_ring ;
 int simple_lock_init (int *,int ) ;

__attribute__((used)) static void
console_ring_lock_init(void)
{
 simple_lock_init(&console_ring.read_lock, 0);
 simple_lock_init(&console_ring.write_lock, 0);
}
