
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Thread* var ;
struct Thread {int tls; } ;


 int mark (int ,struct Thread*,void (*) (struct Thread*,void*)) ;

__attribute__((used)) static void Thread_Mark(var self, var gc, void(*f)(var,void*)) {
  struct Thread* t = self;
  mark(t->tls, gc, f);
}
