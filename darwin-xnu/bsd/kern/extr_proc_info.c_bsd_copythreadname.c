
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {char* pth_name; } ;


 int MAXTHREADNAMESIZE ;
 int bcopy (char*,char*,int ) ;
 scalar_t__ kalloc (int ) ;

void
bsd_copythreadname(void *dst_uth, void *src_uth)
{
 struct uthread *dst_ut = (struct uthread *)dst_uth;
 struct uthread *src_ut = (struct uthread *)src_uth;

 if (src_ut->pth_name == ((void*)0))
  return;

 if (dst_ut->pth_name == ((void*)0)) {
  dst_ut->pth_name = (char *)kalloc(MAXTHREADNAMESIZE);
  if (dst_ut->pth_name == ((void*)0))
   return;
 }

 bcopy(src_ut->pth_name, dst_ut->pth_name, MAXTHREADNAMESIZE);
 return;
}
