
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Float* var ;
struct Float {double val; } ;



__attribute__((used)) static double Float_C_Float(var self) {
  struct Float* f = self;
  return f->val;
}
