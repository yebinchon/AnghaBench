
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int32_t ;
struct inpcbinfo {int dummy; } ;
struct inpcb {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_12__ {int sin6_len; int sin6_port; struct in6_addr const sin6_addr; } ;
struct TYPE_9__ {scalar_t__ sin_family; int sin_len; int sin_port; int sin_addr; } ;
struct TYPE_13__ {TYPE_5__ v6; TYPE_2__ v4; } ;
struct TYPE_10__ {int sin6_len; int sin6_port; struct in6_addr const sin6_addr; int sin6_family; } ;
struct TYPE_8__ {scalar_t__ sin_family; int sin_len; int sin_port; int sin_addr; } ;
struct TYPE_11__ {TYPE_3__ v6; TYPE_1__ v4; } ;
struct TYPE_14__ {TYPE_6__ local; TYPE_4__ remote; } ;
typedef TYPE_7__ nstat_tcp_add_param ;
typedef int * nstat_provider_cookie_t ;
typedef int errno_t ;




 int EINVAL ;
 int ENOENT ;
 int WNT_RELEASE ;
 struct inpcb* in6_pcblookup_hash (struct inpcbinfo*,struct in6_addr*,int ,struct in6_addr*,int ,int,int *) ;
 int in_pcb_checkstate (struct inpcb*,int ,int ) ;
 struct inpcb* in_pcblookup_hash (struct inpcbinfo*,int ,int ,int ,int ,int,int *) ;
 int * nstat_tucookie_alloc (struct inpcb*) ;

__attribute__((used)) static errno_t
nstat_tcpudp_lookup(
 struct inpcbinfo *inpinfo,
 const void *data,
 u_int32_t length,
 nstat_provider_cookie_t *out_cookie)
{
 struct inpcb *inp = ((void*)0);


 const nstat_tcp_add_param *param = (const nstat_tcp_add_param*)data;
 if (length < sizeof(*param))
 {
  return EINVAL;
 }


 if (param->remote.v4.sin_family != 0 &&
  param->remote.v4.sin_family != param->local.v4.sin_family)
 {
  return EINVAL;
 }


 switch (param->local.v4.sin_family)
 {
  case 129:
  {
   if (param->local.v4.sin_len != sizeof(param->local.v4) ||
      (param->remote.v4.sin_family != 0 &&
       param->remote.v4.sin_len != sizeof(param->remote.v4)))
     {
    return EINVAL;
     }

   inp = in_pcblookup_hash(inpinfo, param->remote.v4.sin_addr, param->remote.v4.sin_port,
      param->local.v4.sin_addr, param->local.v4.sin_port, 1, ((void*)0));
  }
  break;
  default:
   return EINVAL;
 }

 if (inp == ((void*)0))
  return ENOENT;


 *out_cookie = nstat_tucookie_alloc(inp);
 if (*out_cookie == ((void*)0))
  in_pcb_checkstate(inp, WNT_RELEASE, 0);

 return 0;
}
