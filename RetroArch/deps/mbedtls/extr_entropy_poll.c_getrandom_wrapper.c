
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_getrandom ;
 int memset (void*,int ,size_t) ;
 int syscall (int ,void*,size_t,unsigned int) ;

__attribute__((used)) static int getrandom_wrapper( void *buf, size_t buflen, unsigned int flags )
{







    return( syscall( SYS_getrandom, buf, buflen, flags ) );
}
