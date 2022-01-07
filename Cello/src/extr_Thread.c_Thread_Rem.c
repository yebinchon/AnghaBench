
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Thread* var ;
struct Thread {int tls; } ;


 int rem (int ,struct Thread*) ;

__attribute__((used)) static void Thread_Rem(var self, var key) {
  struct Thread* t = self;
  rem(t->tls, key);
}
