
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Zip* var ;
struct Zip {void* values; void* iters; } ;


 int Tuple ;
 int _ ;
 int assign (void*,struct Zip*) ;
 size_t len (struct Zip*) ;
 void* new (int ) ;
 int push (void*,int ) ;

__attribute__((used)) static void Zip_New(var self, var args) {
  struct Zip* z = self;
  z->iters = new(Tuple);
  z->values = new(Tuple);
  assign(z->iters, args);
  for (size_t i = 0; i < len(args); i++) {
    push(z->values, _);
  }
}
