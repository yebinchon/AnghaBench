
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sdgecko_doUnmount (int) ;

__attribute__((used)) static bool __gcsd_shutdown(int n)
{
 sdgecko_doUnmount(n);
 return 1;
}
