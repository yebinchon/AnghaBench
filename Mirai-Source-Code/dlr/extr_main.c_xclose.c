
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCN (int ) ;
 int SYS_close ;
 int syscall (int ,int) ;

int xclose(int fd)
{
    return syscall(SCN(SYS_close), fd);
}
