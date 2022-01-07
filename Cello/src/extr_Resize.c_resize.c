
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Resize ;
 int method (int ,int ,void (*) (int ,size_t),size_t) ;

void resize(var self, size_t n) {
  method(self, Resize, resize, n);
}
