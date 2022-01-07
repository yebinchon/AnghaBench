
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int buf_flushdirtyblks_skipinfo (int ,int,int,char const*) ;

void
buf_flushdirtyblks(vnode_t vp, int wait, int flags, const char *msg) {

 (void) buf_flushdirtyblks_skipinfo(vp, wait, flags, msg);
 return;
}
