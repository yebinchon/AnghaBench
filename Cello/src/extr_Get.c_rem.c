
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Get ;
 int method (int ,int ,void (*) (int ,int ),int ) ;

void rem(var self, var key) {
  method(self, Get, rem, key);
}
