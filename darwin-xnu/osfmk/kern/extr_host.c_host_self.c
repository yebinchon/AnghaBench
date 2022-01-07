
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * host_t ;


 int realhost ;

host_t
host_self(void)
{
 return (&realhost);
}
