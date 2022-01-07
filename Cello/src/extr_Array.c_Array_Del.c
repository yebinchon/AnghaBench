
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Array* var ;
struct Array {size_t nitems; int data; } ;


 int Array_Item (struct Array*,size_t) ;
 int destruct (int ) ;
 int free (int ) ;

__attribute__((used)) static void Array_Del(var self) {

  struct Array* a = self;

  for(size_t i = 0; i < a->nitems; i++) {
    destruct(Array_Item(a, i));
  }

  free(a->data);

}
