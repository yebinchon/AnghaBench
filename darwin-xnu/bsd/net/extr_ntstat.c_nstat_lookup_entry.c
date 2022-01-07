
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int nstat_provider_id_t ;
typedef int nstat_provider_cookie_t ;
struct TYPE_4__ {int (* nstat_lookup ) (void const*,int ,int *) ;} ;
typedef TYPE_1__ nstat_provider ;
typedef int errno_t ;


 int ENOENT ;
 TYPE_1__* nstat_find_provider_by_id (int ) ;
 int stub1 (void const*,int ,int *) ;

__attribute__((used)) static errno_t
nstat_lookup_entry(
 nstat_provider_id_t id,
 const void *data,
 u_int32_t length,
 nstat_provider **out_provider,
 nstat_provider_cookie_t *out_cookie)
{
 *out_provider = nstat_find_provider_by_id(id);
 if (*out_provider == ((void*)0))
 {
  return ENOENT;
 }

 return (*out_provider)->nstat_lookup(data, length, out_cookie);
}
