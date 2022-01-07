
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Thread* var ;
struct Thread {int is_running; } ;



__attribute__((used)) static bool Thread_Running(var self) {
  struct Thread* t = self;
  return t->is_running;
}
