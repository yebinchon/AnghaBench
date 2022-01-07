
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Sort ;
 int method (int ,int ,void (*) (int ,int (*) (int ,int )),int (*) (int ,int )) ;

void sort_by(var self, bool(*f)(var,var)) {
  method(self, Sort, sort_by, f);
}
