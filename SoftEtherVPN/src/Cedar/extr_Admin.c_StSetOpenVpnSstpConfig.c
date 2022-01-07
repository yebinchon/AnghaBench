
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {TYPE_1__* Server; } ;
struct TYPE_7__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int OPENVPN_SSTP_CONFIG ;
typedef int CEDAR ;
typedef TYPE_2__ ADMIN ;


 int ALog (TYPE_2__*,int *,char*) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SiSetOpenVPNAndSSTPConfig (TYPE_1__*,int *) ;

UINT StSetOpenVpnSstpConfig(ADMIN *a, OPENVPN_SSTP_CONFIG *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 SERVER_ADMIN_ONLY;
 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType != SERVER_TYPE_STANDALONE)
 {
  return ERR_NOT_SUPPORTED;
 }

 SiSetOpenVPNAndSSTPConfig(s, t);

 ALog(a, ((void*)0), "LA_SET_OVPN_SSTP_CONFIG");

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
