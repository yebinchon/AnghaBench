
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct IGDdatas_service {int dummy; } ;
struct TYPE_4__ {int servicetype; } ;
struct TYPE_3__ {char* servicetype; } ;
struct IGDdatas {TYPE_2__ tmp; TYPE_1__ second; TYPE_1__ first; TYPE_1__ IPv6FC; TYPE_1__ CIF; int level; } ;


 scalar_t__ COMPARE (int ,char*) ;
 int memcmp (char const*,char*,int) ;
 int memcpy (TYPE_1__*,TYPE_2__*,int) ;

void IGDendelt(void * d, const char * name, int l)
{
 struct IGDdatas * datas = (struct IGDdatas *)d;
 datas->level--;

 if( (l==7) && !memcmp(name, "service", l) )
 {
  if(COMPARE(datas->tmp.servicetype,
             "urn:schemas-upnp-org:service:WANCommonInterfaceConfig:")) {
   memcpy(&datas->CIF, &datas->tmp, sizeof(struct IGDdatas_service));
  } else if(COMPARE(datas->tmp.servicetype,
                   "urn:schemas-upnp-org:service:WANIPv6FirewallControl:")) {
   memcpy(&datas->IPv6FC, &datas->tmp, sizeof(struct IGDdatas_service));
  } else if(COMPARE(datas->tmp.servicetype,
                    "urn:schemas-upnp-org:service:WANIPConnection:")
           || COMPARE(datas->tmp.servicetype,
                      "urn:schemas-upnp-org:service:WANPPPConnection:") ) {
   if(datas->first.servicetype[0] == '\0') {
    memcpy(&datas->first, &datas->tmp, sizeof(struct IGDdatas_service));
   } else {
    memcpy(&datas->second, &datas->tmp, sizeof(struct IGDdatas_service));
   }
  }
 }
}
