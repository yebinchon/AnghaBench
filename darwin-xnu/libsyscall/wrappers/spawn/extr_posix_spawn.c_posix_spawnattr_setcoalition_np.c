
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct _posix_spawn_coalition_info {TYPE_1__* psci_info; } ;
typedef int * posix_spawnattr_t ;
typedef TYPE_2__* _posix_spawnattr_t ;
struct TYPE_4__ {struct _posix_spawn_coalition_info* psa_coalition_info; } ;
struct TYPE_3__ {int psci_role; int psci_id; } ;


 int COALITION_TYPE_MAX ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ malloc (int) ;
 int memset (struct _posix_spawn_coalition_info*,int ,int) ;

int posix_spawnattr_setcoalition_np(const posix_spawnattr_t * __restrict attr,
        uint64_t coalitionid, int type, int role)
{
 _posix_spawnattr_t psattr;
 struct _posix_spawn_coalition_info *coal_info;

 if (attr == ((void*)0) || *attr == ((void*)0)) {
  return EINVAL;
 }
 if (type < 0 || type > COALITION_TYPE_MAX)
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;

 coal_info = psattr->psa_coalition_info;
 if (!coal_info) {
  coal_info = (struct _posix_spawn_coalition_info *)malloc(sizeof(*coal_info));
  if (!coal_info)
   return ENOMEM;
  memset(coal_info, 0, sizeof(*coal_info));
  psattr->psa_coalition_info = coal_info;
 }

 coal_info->psci_info[type].psci_id = coalitionid;
 coal_info->psci_info[type].psci_role = role;

 return 0;
}
