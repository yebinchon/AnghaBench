
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idx; int siz; int s; int kind; } ;
typedef TYPE_1__ Capture ;


 int printcapkind (int ) ;
 int printf (char*,int,int,int ) ;

__attribute__((used)) static void printcap (Capture *cap) {
  printcapkind(cap->kind);
  printf(" (idx: %d - size: %d) -> %p\n", cap->idx, cap->siz, cap->s);
}
