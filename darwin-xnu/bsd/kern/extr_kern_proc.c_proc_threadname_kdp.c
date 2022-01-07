
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAXTHREADNAMESIZE ;
 int bsd_getthreadname (void*,char*) ;

int
proc_threadname_kdp(void * uth, char * buf, size_t size)
{
 if (size < MAXTHREADNAMESIZE) {




  return -1;
 }

 if (uth != ((void*)0)) {
  bsd_getthreadname(uth, buf);
 }
 return 0;
}
