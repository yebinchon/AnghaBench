
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Call ;
 int method (int ,int ,int (*) (int ,int ),int ) ;

var call_with(var self, var args) {
  return method(self, Call, call_with, args);
}
