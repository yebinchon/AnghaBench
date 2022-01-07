
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Data; } ;
typedef TYPE_1__ SHARED_BUFFER ;


 int Free (TYPE_1__*) ;

void CleanupSharedBuffer(SHARED_BUFFER *b)
{

 if (b == ((void*)0))
 {
  return;
 }

 Free(b->Data);

 Free(b);
}
