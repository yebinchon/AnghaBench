
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Header {int dummy; } ;
struct Array {int type; scalar_t__ data; } ;


 int AllocData ;
 size_t Array_Step (struct Array*) ;
 int header_init (struct Header*,int ,int ) ;
 int memset (char*,int ,size_t) ;

__attribute__((used)) static void Array_Alloc(struct Array* a, size_t i) {
  memset((char*)a->data + Array_Step(a) * i, 0, Array_Step(a));
  struct Header* head = (struct Header*)((char*)a->data + Array_Step(a) * i);
  header_init(head, a->type, AllocData);
}
