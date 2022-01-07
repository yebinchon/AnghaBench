
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int machine; int port; } ;
struct auditinfo {int ai_asid; TYPE_1__ ai_termid; int ai_mask; int ai_auid; } ;
struct TYPE_6__ {int * at_addr; int at_port; } ;
struct TYPE_7__ {int ai_asid; TYPE_2__ ai_termid; int ai_mask; int ai_auid; } ;
typedef TYPE_3__ auditinfo_addr_t ;
typedef int aia ;


 int getaudit_addr (TYPE_3__*,int) ;

int
getaudit(struct auditinfo *ainfo)
{
 int err;
 auditinfo_addr_t aia;

 if ((err = getaudit_addr(&aia, sizeof(aia))) != 0)
  return (err);

 ainfo->ai_auid = aia.ai_auid;
 ainfo->ai_mask = aia.ai_mask;
 ainfo->ai_termid.port = aia.ai_termid.at_port;
 ainfo->ai_termid.machine = aia.ai_termid.at_addr[0];
 ainfo->ai_asid = aia.ai_asid;

 return (0);
}
