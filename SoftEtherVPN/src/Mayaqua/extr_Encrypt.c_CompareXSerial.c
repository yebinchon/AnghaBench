
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int data; } ;
typedef TYPE_1__ X_SERIAL ;


 scalar_t__ Cmp (int ,int ,scalar_t__) ;

bool CompareXSerial(X_SERIAL *s1, X_SERIAL *s2)
{

 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }

 if (s1->size != s2->size)
 {
  return 0;
 }

 if (Cmp(s1->data, s2->data, s1->size) != 0)
 {
  return 0;
 }

 return 1;
}
