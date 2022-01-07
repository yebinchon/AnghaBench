
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Function* var ;
struct Function {struct Function* (* func ) (struct Function*) ;} ;


 struct Function* stub1 (struct Function*) ;

__attribute__((used)) static var Function_Call(var self, var args) {
  struct Function* f = self;
  return f->func(args);
}
