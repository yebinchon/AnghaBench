
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* segment ) (int) ;} ;


 TYPE_1__* IR ;
 int curseg ;
 int stub1 (int) ;

void swtoseg(int seg) {
 if (curseg != seg)
  (*IR->segment)(seg);
 curseg = seg;
}
