
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Exception* var ;
struct Exception {int msg; int obj; } ;


 int print_to (struct Exception*,int,char*,struct Exception*,int ,int ) ;

__attribute__((used)) static int Exception_Show(var self, var out, int pos) {
  struct Exception* e = self;
  return print_to(out, pos,
    "<'Exception' At 0x%p %$ - %$>", self, e->obj, e->msg);
}
