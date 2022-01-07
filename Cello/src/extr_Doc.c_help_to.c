
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Help ;
 int method (int ,int ,int (*) (int ,int,int ),int ,int) ;

int help_to(var out, int pos, var self) {
  return method(self, Help, help_to, out, pos);
}
