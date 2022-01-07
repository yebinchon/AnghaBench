
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ s; } ;
typedef TYPE_1__ Capture ;


 int printcap (TYPE_1__*) ;

__attribute__((used)) static void printcaplist (Capture *cap) {
  for (; cap->s; cap++) printcap(cap);
}
