
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Zip* var ;
struct Zip {int values; int iters; } ;


 int del (int ) ;

__attribute__((used)) static void Zip_Del(var self) {
  struct Zip* z = self;
  del(z->iters);
  del(z->values);
}
