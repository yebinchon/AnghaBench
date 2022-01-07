
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Slice* var ;
struct Slice {int range; } ;


 int del (int ) ;

__attribute__((used)) static void Slice_Del(var self) {
  struct Slice* s = self;
  del(s->range);
}
