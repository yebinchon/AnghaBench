
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Exception* var ;
struct Exception {int active; } ;



__attribute__((used)) static bool Exception_Running(var self) {
  struct Exception* e = self;
  return e->active;
}
