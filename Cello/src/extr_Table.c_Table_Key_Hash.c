
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct Table {scalar_t__ data; } ;


 int Table_Step (struct Table*) ;

__attribute__((used)) static uint64_t Table_Key_Hash(struct Table* t, uint64_t i) {
  return *(uint64_t*)((char*)t->data + i * Table_Step(t));
}
