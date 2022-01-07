
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT64 ;
typedef size_t UINT ;
struct TYPE_5__ {size_t num_value; TYPE_1__** values; } ;
struct TYPE_4__ {int Int64Value; } ;
typedef TYPE_2__ ELEMENT ;



UINT64 GetInt64Value(ELEMENT *e, UINT index)
{

 if (e == ((void*)0))
 {
  return 0;
 }
 if (index >= e->num_value)
 {
  return 0;
 }
 if (e->values[index] == ((void*)0))
 {
  return 0;
 }

 return e->values[index]->Int64Value;
}
