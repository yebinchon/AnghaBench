
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int32_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {size_t sa_family; } ;
struct rtentry {int dummy; } ;
struct radix_node_head {int dummy; } ;
struct TYPE_10__ {scalar_t__ sin_family; int sin_len; } ;
struct TYPE_11__ {TYPE_4__ v4; } ;
struct TYPE_8__ {scalar_t__ sin6_family; int sin6_len; } ;
struct TYPE_7__ {scalar_t__ sin_family; int sin_len; } ;
struct TYPE_9__ {TYPE_2__ v6; TYPE_1__ v4; } ;
struct TYPE_12__ {int ifindex; TYPE_5__ mask; TYPE_3__ dst; } ;
typedef TYPE_6__ nstat_route_add_param ;
typedef int * nstat_provider_cookie_t ;
typedef int errno_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_MAX ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENOENT ;
 int TRUE ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 struct rtentry* rt_lookup (int ,struct sockaddr*,struct sockaddr*,struct radix_node_head*,int ) ;
 struct radix_node_head** rt_tables ;

__attribute__((used)) static errno_t
nstat_route_lookup(
 const void *data,
 u_int32_t length,
 nstat_provider_cookie_t *out_cookie)
{


 union
 {
  struct sockaddr *sa;
  const struct sockaddr *const_sa;
 } dst, mask;

 const nstat_route_add_param *param = (const nstat_route_add_param*)data;
 *out_cookie = ((void*)0);

 if (length < sizeof(*param))
 {
  return EINVAL;
 }

 if (param->dst.v4.sin_family == 0 ||
  param->dst.v4.sin_family > AF_MAX ||
  (param->mask.v4.sin_family != 0 && param->mask.v4.sin_family != param->dst.v4.sin_family))
 {
  return EINVAL;
 }

 if (param->dst.v4.sin_len > sizeof(param->dst) ||
  (param->mask.v4.sin_family && param->mask.v4.sin_len > sizeof(param->mask.v4.sin_len)))
 {
  return EINVAL;
 }
 if ((param->dst.v4.sin_family == AF_INET &&
     param->dst.v4.sin_len < sizeof(struct sockaddr_in)) ||
     (param->dst.v6.sin6_family == AF_INET6 &&
     param->dst.v6.sin6_len < sizeof(struct sockaddr_in6)))
 {
  return EINVAL;
 }

 dst.const_sa = (const struct sockaddr*)&param->dst;
 mask.const_sa = param->mask.v4.sin_family ? (const struct sockaddr*)&param->mask : ((void*)0);

 struct radix_node_head *rnh = rt_tables[dst.sa->sa_family];
 if (rnh == ((void*)0)) return EAFNOSUPPORT;

 lck_mtx_lock(rnh_lock);
 struct rtentry *rt = rt_lookup(TRUE, dst.sa, mask.sa, rnh, param->ifindex);
 lck_mtx_unlock(rnh_lock);

 if (rt) *out_cookie = (nstat_provider_cookie_t)rt;

 return rt ? 0 : ENOENT;
}
