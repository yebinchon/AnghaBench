
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Stream ;
 int method (int ,int ,int (*) (int )) ;

bool seof(var self) {
  return method(self, Stream, seof);
}
