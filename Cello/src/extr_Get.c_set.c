
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Get ;
 int method (int ,int ,void (*) (int ,int ,int ),int ,int ) ;

void set(var self, var key, var val) {
  method(self, Get, set, key, val);
}
