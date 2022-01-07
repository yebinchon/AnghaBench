
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {int pth_name; } ;


 scalar_t__ MAXTHREADNAMESIZE ;
 int OSCompareAndSwapPtr (int *,char*,int *) ;
 int TRACE_STRING_THREADNAME ;
 int TRACE_STRING_THREADNAME_PREV ;
 int assert (char*) ;
 int bzero (char*,scalar_t__) ;
 char* kalloc (scalar_t__) ;
 int kernel_debug_string_simple (int ,int ) ;
 int kfree (char*,scalar_t__) ;
 int strncpy (int ,char const*,scalar_t__) ;

void
bsd_setthreadname(void *uth, const char *name) {
 struct uthread *ut = (struct uthread *)uth;
 char * name_buf = ((void*)0);

 if (!ut->pth_name) {

  name_buf = kalloc(MAXTHREADNAMESIZE);
  assert(name_buf);
  bzero(name_buf, MAXTHREADNAMESIZE);


  if (!OSCompareAndSwapPtr(((void*)0), name_buf, &ut->pth_name)) {
   kfree(name_buf, MAXTHREADNAMESIZE);
  }
 } else {
  kernel_debug_string_simple(TRACE_STRING_THREADNAME_PREV, ut->pth_name);
 }

 strncpy(ut->pth_name, name, MAXTHREADNAMESIZE - 1);
 kernel_debug_string_simple(TRACE_STRING_THREADNAME, ut->pth_name);
}
