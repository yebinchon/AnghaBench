
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Box* var ;
struct Box {struct Box* val; } ;



__attribute__((used)) static var Box_Deref(var self) {
  struct Box* b = self;
  return b->val;
}
