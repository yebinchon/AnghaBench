
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int p ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {scalar_t__ Err_IPv4; scalar_t__ Err_IPv6; TYPE_1__* Cedar; } ;
struct TYPE_10__ {int NewHostname; } ;
struct TYPE_9__ {int Server; } ;
typedef TYPE_2__ DDNS_REGISTER_PARAM ;
typedef int DDNS_CLIENT_STATUS ;
typedef TYPE_3__ DDNS_CLIENT ;


 int DCGetStatus (TYPE_3__*,int *) ;
 scalar_t__ DCRegister (TYPE_3__*,int,TYPE_2__*,int *) ;
 scalar_t__ ERR_DDNS_HOSTNAME_TOO_LONG ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_NO_ERROR ;
 int SiApplyAzureConfig (int ,int *) ;
 int StrCpy (int ,int,char*) ;
 int StrLen (char*) ;
 int Zero (TYPE_2__*,int) ;

UINT DCChangeHostName(DDNS_CLIENT *c, char *hostname)
{
 UINT ret;
 DDNS_REGISTER_PARAM p;

 if (c == ((void*)0) || hostname == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 if (StrLen(hostname) > 32)
 {

  return ERR_DDNS_HOSTNAME_TOO_LONG;
 }

 Zero(&p, sizeof(p));

 StrCpy(p.NewHostname, sizeof(p.NewHostname), hostname);


 if (c->Err_IPv4 == ERR_NO_ERROR)
 {

  ret = DCRegister(c, 0, &p, ((void*)0));
 }
 else if (c->Err_IPv6 == ERR_NO_ERROR)
 {

  ret = DCRegister(c, 1, &p, ((void*)0));
 }
 else
 {

  ret = DCRegister(c, 1, &p, ((void*)0));
  if (ret != ERR_NO_ERROR)
  {
   ret = DCRegister(c, 0, &p, ((void*)0));
  }
 }

 if (ret == ERR_NO_ERROR)
 {
  DDNS_CLIENT_STATUS st;

  DCGetStatus(c, &st);

  SiApplyAzureConfig(c->Cedar->Server, &st);
 }

 return ret;
}
