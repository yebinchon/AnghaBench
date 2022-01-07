
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset64; } ;


 int DBLMAP (int ) ;
 int IDTSZ ;
 TYPE_1__* master_idt64 ;

void idt64_remap(void) {
 for (int i = 0; i < IDTSZ; i++) {
  master_idt64[i].offset64 = DBLMAP(master_idt64[i].offset64);
 }
}
