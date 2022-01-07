
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
typedef int int64_t ;


 int Stream ;
 int method (int ,int ,void (*) (int ,int ,int),int ,int) ;

void sseek(var self, int64_t pos, int origin) {
  method(self, Stream, sseek, pos, origin);
}
