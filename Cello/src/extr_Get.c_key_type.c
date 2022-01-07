
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Get ;
 int method (int ,int ,int (*) (int )) ;

var key_type(var self) {
  return method(self, Get, key_type);
}
