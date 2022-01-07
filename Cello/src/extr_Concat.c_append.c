
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Concat ;
 int method (int ,int ,void (*) (int ,int ),int ) ;

void append(var self, var obj) {
  method(self, Concat, append, obj);
}
