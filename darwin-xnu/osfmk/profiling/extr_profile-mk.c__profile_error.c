
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct profile_vars {int dummy; } ;


 int panic (char*) ;

void _profile_error(struct profile_vars *pv)
{
 panic("Fatal error in profiling");
}
