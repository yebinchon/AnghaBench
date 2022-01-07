
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* var ;
struct Box {void* val; } ;



__attribute__((used)) static void Box_Ref(var self, var val) {
  struct Box* b = self;
  b->val = val;
}
