
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;
typedef int _node ;


 scalar_t__ __lwp_queue_get (int *) ;
 int _queue ;
 int free (int *) ;

s32 KEYBOARD_FlushEvents(void)
{
 s32 res;
 _node *n;

 res = 0;
 while (1) {
  n = (_node *) __lwp_queue_get(&_queue);

  if (!n)
   break;

  free(n);
  res++;
 }

 return res;
}
