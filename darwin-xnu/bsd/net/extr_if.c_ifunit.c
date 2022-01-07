
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int FALSE ;
 struct ifnet* ifunit_common (char const*,int ) ;

struct ifnet *
ifunit(const char *name)
{
 return (ifunit_common(name, FALSE));
}
