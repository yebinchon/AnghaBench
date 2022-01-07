
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int whitelist_disabled ;

int
kpc_disable_whitelist( int val )
{
 whitelist_disabled = val;
 return 0;
}
