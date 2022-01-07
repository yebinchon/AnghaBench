
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int policyname; } ;
typedef TYPE_1__ _ps_mac_policy_extension_t ;
typedef TYPE_2__* _posix_spawn_mac_policy_extensions_t ;
struct TYPE_6__ {int psmx_count; TYPE_1__* psmx_extensions; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static
_ps_mac_policy_extension_t *
posix_spawnattr_macpolicyinfo_lookup(_posix_spawn_mac_policy_extensions_t psmx, const char *policyname)
{
 int i;

 if (psmx == ((void*)0))
  return ((void*)0);

 for (i = 0; i < psmx->psmx_count; i++) {
  _ps_mac_policy_extension_t *extension = &psmx->psmx_extensions[i];
  if (strcmp(extension->policyname, policyname) == 0)
   return extension;
 }
 return ((void*)0);
}
