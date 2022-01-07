
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Ref* var ;
struct Ref {struct Ref* val; } ;



__attribute__((used)) static var Ref_Deref(var self) {
  struct Ref* r = self;
  return r->val;
}
