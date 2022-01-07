
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Zip* var ;
struct Zip {int values; int iters; } ;


 int Zip ;
 int assign (int ,int ) ;
 struct Zip* cast (struct Zip*,int ) ;

__attribute__((used)) static void Zip_Assign(var self, var obj) {
  struct Zip* z = self;
  struct Zip* o = cast(obj, Zip);
  assign(z->iters, o->iters);
  assign(z->values, o->values);
}
