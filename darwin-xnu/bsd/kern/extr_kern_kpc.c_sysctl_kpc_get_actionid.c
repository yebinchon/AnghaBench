
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int kpc_get_actionid (int ,void*) ;

__attribute__((used)) static int
sysctl_kpc_get_actionid(uint32_t classes, void* buf)
{
 return kpc_get_actionid( classes, buf );
}
