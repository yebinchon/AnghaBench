
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int * posix_spawnattr_t ;
struct TYPE_9__ {uintptr_t data; size_t datalen; int policyname; } ;
typedef TYPE_1__ _ps_mac_policy_extension_t ;
typedef TYPE_2__* _posix_spawnattr_t ;
typedef TYPE_3__* _posix_spawn_mac_policy_extensions_t ;
struct TYPE_11__ {int psmx_alloc; int psmx_count; TYPE_1__* psmx_extensions; } ;
struct TYPE_10__ {TYPE_3__* psa_mac_extensions; } ;


 int EINVAL ;
 int ENOMEM ;
 int PS_MAC_EXTENSIONS_INIT_COUNT ;
 size_t PS_MAC_EXTENSIONS_SIZE (int) ;
 TYPE_3__* malloc (size_t) ;
 scalar_t__ os_mul_overflow (int,int,int*) ;
 TYPE_1__* posix_spawnattr_macpolicyinfo_lookup (TYPE_3__*,char const*) ;
 TYPE_3__* reallocf (TYPE_3__*,size_t) ;
 int strlcpy (int ,char const*,int) ;

int
posix_spawnattr_setmacpolicyinfo_np(posix_spawnattr_t * __restrict attr,
  const char *policyname, void *data, size_t datalen)
{
 _posix_spawnattr_t psattr;
 _posix_spawn_mac_policy_extensions_t psmx;
 _ps_mac_policy_extension_t *extension;

 if (attr == ((void*)0) || *attr == ((void*)0) || policyname == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 psmx = psattr->psa_mac_extensions;
 extension = posix_spawnattr_macpolicyinfo_lookup(psattr->psa_mac_extensions, policyname);
 if (extension != ((void*)0)) {
  extension->data = (uintptr_t)data;
  extension->datalen = datalen;
  return 0;
 }
 else if (psmx == ((void*)0)) {
  psmx = psattr->psa_mac_extensions = malloc(PS_MAC_EXTENSIONS_SIZE(PS_MAC_EXTENSIONS_INIT_COUNT));
  if (psmx == ((void*)0))
   return ENOMEM;
  psmx->psmx_alloc = PS_MAC_EXTENSIONS_INIT_COUNT;
  psmx->psmx_count = 0;
 }
 else if (psmx->psmx_count == psmx->psmx_alloc) {
  int newnum = 0;
  if (os_mul_overflow(psmx->psmx_alloc, 2, &newnum))
   return ENOMEM;
  size_t extsize = PS_MAC_EXTENSIONS_SIZE(newnum);
  if (extsize == 0)
   return ENOMEM;
  psmx = psattr->psa_mac_extensions = reallocf(psmx, extsize);
  if (psmx == ((void*)0))
   return ENOMEM;
  psmx->psmx_alloc = newnum;
 }
 extension = &psmx->psmx_extensions[psmx->psmx_count];
 strlcpy(extension->policyname, policyname, sizeof(extension->policyname));
 extension->data = (uintptr_t)data;
 extension->datalen = datalen;
 psmx->psmx_count += 1;
 return 0;
}
