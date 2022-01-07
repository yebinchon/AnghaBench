
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * host_priv_t ;


 int realhost ;

host_priv_t
host_priv_self(void)
{
 return (&realhost);
}
