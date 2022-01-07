
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSUnmount (void*,void*,char const*,int) ;

int UmountFS(void *pClient, void *pCmd, const char *mountPath)
{
   return FSUnmount(pClient, pCmd, mountPath, -1);
}
