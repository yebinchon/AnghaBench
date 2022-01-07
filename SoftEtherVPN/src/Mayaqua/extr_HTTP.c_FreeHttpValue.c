
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Name; struct TYPE_4__* Data; } ;
typedef TYPE_1__ HTTP_VALUE ;


 int Free (TYPE_1__*) ;

void FreeHttpValue(HTTP_VALUE *value)
{

 if (value == ((void*)0))
 {
  return;
 }

 Free(value->Data);
 Free(value->Name);

 Free(value);
}
