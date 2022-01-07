
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Exception* var ;
struct Exception {size_t depth; } ;



__attribute__((used)) static size_t Exception_Len(var self) {
  struct Exception* e = self;
  return e->depth;
}
