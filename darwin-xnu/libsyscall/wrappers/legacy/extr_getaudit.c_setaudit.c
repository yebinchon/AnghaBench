
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int machine; int port; } ;
struct auditinfo {int ai_asid; TYPE_2__ ai_termid; int ai_mask; int ai_auid; } ;
struct TYPE_6__ {int * at_addr; int at_type; int at_port; } ;
struct TYPE_8__ {int ai_asid; TYPE_1__ ai_termid; int ai_mask; int ai_auid; } ;
typedef TYPE_3__ auditinfo_addr_t ;
typedef int aia ;


 int AU_IPv4 ;
 int getaudit_addr (TYPE_3__*,int) ;
 int setaudit_addr (TYPE_3__*,int) ;

int
setaudit(const struct auditinfo *ainfo)
{
 int err;
 struct auditinfo *ai = (struct auditinfo *)ainfo;
 auditinfo_addr_t aia;


 if ((err = getaudit_addr(&aia, sizeof(aia))) != 0)
  return (err);

 aia.ai_auid = ai->ai_auid;
 aia.ai_mask = ai->ai_mask;
 aia.ai_termid.at_port = ai->ai_termid.port;
 aia.ai_termid.at_type = AU_IPv4;
 aia.ai_termid.at_addr[0] = ai->ai_termid.machine;
 aia.ai_asid = ai->ai_asid;

 if ((err = setaudit_addr(&aia, sizeof(aia))) != 0)
  return (err);


 ai->ai_asid = aia.ai_asid;

 return (0);
}
