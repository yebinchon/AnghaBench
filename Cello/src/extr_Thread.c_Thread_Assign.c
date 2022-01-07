
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Thread* var ;
struct Thread {scalar_t__ tls; int func; } ;


 int Table ;
 int Thread ;
 scalar_t__ alloc_raw (int ) ;
 int assign (scalar_t__,scalar_t__) ;
 struct Thread* cast (struct Thread*,int ) ;

__attribute__((used)) static void Thread_Assign(var self, var obj) {
  struct Thread* t = self;
  struct Thread* o = cast(obj, Thread);
  t->func = o->func;
  t->tls = t->tls ? t->tls : alloc_raw(Table);
  assign(t->tls, o->tls);
}
