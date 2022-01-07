
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Range* var ;
struct Range {int value; } ;


 int del (int ) ;

__attribute__((used)) static void Range_Del(var self) {
  struct Range* r = self;
  del(r->value);
}
