
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Float* var ;
struct Float {int val; } ;


 int c_float (struct Float*) ;

__attribute__((used)) static void Float_Assign(var self, var obj) {
  struct Float* f = self;
  f->val = c_float(obj);
}
