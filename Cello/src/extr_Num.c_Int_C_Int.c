
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Int* var ;
struct Int {int val; } ;
typedef int int64_t ;



__attribute__((used)) static int64_t Int_C_Int(var self) {
  struct Int* i = self;
  return i->val;
}
