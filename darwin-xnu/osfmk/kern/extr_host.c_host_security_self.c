
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * host_security_t ;


 int realhost ;

host_security_t
host_security_self(void)
{
 return (&realhost);
}
