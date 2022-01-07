
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int port; int call_id; int spi; } ;
struct TYPE_10__ {int addr; TYPE_2__ xport; } ;
struct TYPE_7__ {int port; } ;
struct TYPE_9__ {int addr; TYPE_1__ xport; } ;
struct pf_state_key {int proto; int af_lan; int proto_variant; TYPE_5__* app_state; TYPE_4__ ext_lan; TYPE_3__ lan; } ;
struct TYPE_11__ {int (* compare_lan_ext ) (TYPE_5__*,TYPE_5__*) ;} ;
 int PF_AZERO (int *,int const) ;
 int PF_EXTFILTER_AD ;
 int PF_EXTFILTER_APD ;
 int PF_EXTFILTER_EI ;
 int PF_GRE_PPTP_VARIANT ;
 int pf_addr_compare (int *,int *,int) ;
 int stub1 (TYPE_5__*,TYPE_5__*) ;

__attribute__((used)) static __inline int
pf_state_compare_lan_ext(struct pf_state_key *a, struct pf_state_key *b)
{
 int diff;
 int extfilter;

 if ((diff = a->proto - b->proto) != 0)
  return (diff);
 if ((diff = a->af_lan - b->af_lan) != 0)
  return (diff);

 extfilter = PF_EXTFILTER_APD;

 switch (a->proto) {
 case 131:
 case 130:
  if ((diff = a->lan.xport.port - b->lan.xport.port) != 0)
   return (diff);
  break;

 case 129:
  if ((diff = a->lan.xport.port - b->lan.xport.port) != 0)
   return (diff);
  if ((diff = a->ext_lan.xport.port - b->ext_lan.xport.port) != 0)
   return (diff);
  break;

 case 128:
  if ((diff = a->proto_variant - b->proto_variant))
   return (diff);
  extfilter = a->proto_variant;
  if ((diff = a->lan.xport.port - b->lan.xport.port) != 0)
   return (diff);
  if ((extfilter < PF_EXTFILTER_AD) &&
      (diff = a->ext_lan.xport.port - b->ext_lan.xport.port) != 0)
   return (diff);
  break;

 case 132:
  if (a->proto_variant == PF_GRE_PPTP_VARIANT &&
      a->proto_variant == b->proto_variant) {
   if (!!(diff = a->ext_lan.xport.call_id -
       b->ext_lan.xport.call_id))
    return (diff);
  }
  break;

 case 133:
  if (!!(diff = a->ext_lan.xport.spi - b->ext_lan.xport.spi))
   return (diff);
  break;

 default:
  break;
 }

 switch (a->af_lan) {
 }

 if (a->app_state && b->app_state) {
  if (a->app_state->compare_lan_ext &&
      b->app_state->compare_lan_ext) {
   diff = (const char *)b->app_state->compare_lan_ext -
       (const char *)a->app_state->compare_lan_ext;
   if (diff != 0)
    return (diff);
   diff = a->app_state->compare_lan_ext(a->app_state,
       b->app_state);
   if (diff != 0)
    return (diff);
  }
 }

 return (0);
}
