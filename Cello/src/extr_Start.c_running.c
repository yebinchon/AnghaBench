
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Start ;
 int method (int ,int ,int (*) (int )) ;

bool running(var self) {
  return method(self, Start, running);
}
