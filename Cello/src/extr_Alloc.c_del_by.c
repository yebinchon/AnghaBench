
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;





 int GC ;
 int current (int ) ;
 int dealloc (int ) ;
 int destruct (int ) ;
 int rem (int ,int ) ;

__attribute__((used)) static void del_by(var self, int method) {

  switch (method) {
    case 128:
    case 129:

    rem(current(GC), self);
    return;

    break;
    case 130: break;
  }

  dealloc(destruct(self));

}
