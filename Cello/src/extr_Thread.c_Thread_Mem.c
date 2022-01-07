
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Thread* var ;
struct Thread {int tls; } ;


 int mem (int ,struct Thread*) ;

__attribute__((used)) static bool Thread_Mem(var self, var key) {
  struct Thread* t = self;
  return mem(t->tls, key);
}
