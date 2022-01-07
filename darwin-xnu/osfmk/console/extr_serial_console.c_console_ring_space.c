
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int used; } ;


 TYPE_1__ console_ring ;

__attribute__((used)) static inline int
console_ring_space(void)
{
 return console_ring.len - console_ring.used;
}
