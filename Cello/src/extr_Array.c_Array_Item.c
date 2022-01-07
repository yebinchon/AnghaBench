
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* var ;
struct Header {int dummy; } ;
struct Array {scalar_t__ data; } ;


 size_t Array_Step (struct Array*) ;

__attribute__((used)) static var Array_Item(struct Array* a, size_t i) {
  return (char*)a->data + Array_Step(a) * i + sizeof(struct Header);
}
