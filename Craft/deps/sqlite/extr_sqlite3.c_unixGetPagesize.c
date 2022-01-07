
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_PAGESIZE ;
 int getpagesize () ;
 scalar_t__ sysconf (int ) ;

__attribute__((used)) static int unixGetPagesize(void){





  return (int)sysconf(_SC_PAGESIZE);

}
