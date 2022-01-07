
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* KeySchedule; int KeyValue; } ;
typedef int DES_key_schedule ;
typedef TYPE_1__ DES_KEY_VALUE ;


 int Copy (int ,void*,int ) ;
 int DES_KEY_SIZE ;
 int DES_set_key_unchecked (void*,void*) ;
 void* ZeroMalloc (int) ;

DES_KEY_VALUE *DesNewKeyValue(void *value)
{
 DES_KEY_VALUE *v;

 if (value == ((void*)0))
 {
  return ((void*)0);
 }

 v = ZeroMalloc(sizeof(DES_KEY_VALUE));

 Copy(v->KeyValue, value, DES_KEY_SIZE);

 v->KeySchedule = ZeroMalloc(sizeof(DES_key_schedule));

 DES_set_key_unchecked(value, v->KeySchedule);

 return v;
}
