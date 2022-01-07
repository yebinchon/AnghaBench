
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int Deleting; int ResponderCookie; int InitiatorCookie; int IkeClient; } ;
struct TYPE_8__ {int StateHasChanged; } ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_SA ;


 int Debug (char*,int ,int ) ;
 int IPsecLog (TYPE_1__*,int *,TYPE_2__*,int *,char*) ;
 int SendDeleteIkeSaPacket (TYPE_1__*,int ,int ,int ) ;

void MarkIkeSaAsDeleted(IKE_SERVER *ike, IKE_SA *sa)
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

 Debug("IKE SA %I64u - %I64u has been marked as being deleted.\n", sa->InitiatorCookie, sa->ResponderCookie);

 SendDeleteIkeSaPacket(ike, sa->IkeClient, sa->InitiatorCookie, sa->ResponderCookie);

 IPsecLog(ike, ((void*)0), sa, ((void*)0), "LI_DELETE_IKE_SA");
}
