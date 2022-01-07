
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * posix_spawnattr_t ;
struct TYPE_4__ {scalar_t__ datalen; scalar_t__ data; } ;
typedef TYPE_1__ _ps_mac_policy_extension_t ;
typedef TYPE_2__* _posix_spawnattr_t ;
struct TYPE_5__ {int psa_mac_extensions; } ;


 int EINVAL ;
 int ESRCH ;
 TYPE_1__* posix_spawnattr_macpolicyinfo_lookup (int ,char const*) ;

int
posix_spawnattr_getmacpolicyinfo_np(const posix_spawnattr_t * __restrict attr,
  const char *policyname, void **datap, size_t *datalenp)
{
 _posix_spawnattr_t psattr;
 _ps_mac_policy_extension_t *extension;

 if (attr == ((void*)0) || *attr == ((void*)0) || policyname == ((void*)0) || datap == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 extension = posix_spawnattr_macpolicyinfo_lookup(psattr->psa_mac_extensions, policyname);
 if (extension == ((void*)0))
  return ESRCH;
 *datap = (void *)(uintptr_t)extension->data;
 if (datalenp != ((void*)0)) {
  *datalenp = (size_t)extension->datalen;
 }
 return 0;
}
