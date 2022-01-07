
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* var ;
struct Ref {void* val; } ;



__attribute__((used)) static void Ref_Ref(var self, var val) {
  struct Ref* r = self;
  r->val = val;
}
