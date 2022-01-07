
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GETIP_THREAD_PARAM ;


 int Free (int *) ;

void CleanupGetIPThreadParam(GETIP_THREAD_PARAM *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 Free(p);
}
