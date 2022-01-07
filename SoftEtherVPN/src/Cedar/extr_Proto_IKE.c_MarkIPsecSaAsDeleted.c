
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int StateHasChanged; } ;
struct TYPE_8__ {int Deleting; int Spi; int IkeClient; } ;
typedef TYPE_1__ IPSECSA ;
typedef TYPE_2__ IKE_SERVER ;


 int Debug (char*,int ) ;
 int IPsecLog (TYPE_2__*,int *,int *,TYPE_1__*,char*) ;
 int SendDeleteIPsecSaPacket (TYPE_2__*,int ,int ) ;

void MarkIPsecSaAsDeleted(IKE_SERVER *ike, IPSECSA *sa)
{

 if (ike == ((void*)0) || sa == ((void*)0))
 {
  return;
 }

 if (sa->Deleting)
 {
  return;
 }

 ike->StateHasChanged = 1;

 sa->Deleting = 1;

 Debug("IPsec SA 0x%X has been marked as being deleted.\n", sa->Spi);

 SendDeleteIPsecSaPacket(ike, sa->IkeClient, sa->Spi);

 IPsecLog(ike, ((void*)0), ((void*)0), sa, "LI_DELETE_IPSEC_SA");
}
