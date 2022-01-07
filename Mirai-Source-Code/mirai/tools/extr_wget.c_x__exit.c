
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCN (int ) ;
 int SYS_exit ;
 int syscall (int ,int) ;

void x__exit(int code)
{
    syscall(SCN(SYS_exit), code);
}
