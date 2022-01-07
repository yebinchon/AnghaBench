
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tag; } ;
typedef TYPE_1__ OSThread ;


 int OS_THREAD_TAG ;
 TYPE_1__* alloc_zeroed (int,int) ;

__attribute__((used)) static OSThread *new_thread(void)
{
   OSThread *t = alloc_zeroed(8, sizeof(OSThread));

   if (!t)
      return ((void*)0);

   t->tag = OS_THREAD_TAG;

   return t;
}
