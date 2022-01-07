
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Array* var ;
struct Array {struct Array* type; } ;



__attribute__((used)) static var Array_Iter_Type(var self) {
  struct Array* a = self;
  return a->type;
}
