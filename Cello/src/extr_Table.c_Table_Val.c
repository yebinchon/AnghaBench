
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* var ;
typedef int uint64_t ;
struct Table {int ksize; scalar_t__ data; } ;
struct Header {int dummy; } ;


 int Table_Step (struct Table*) ;

__attribute__((used)) static var Table_Val(struct Table* t, uint64_t i) {
  return (char*)t->data + i * Table_Step(t) +
    sizeof(uint64_t) +
    sizeof(struct Header) +
    t->ksize +
    sizeof(struct Header);
}
