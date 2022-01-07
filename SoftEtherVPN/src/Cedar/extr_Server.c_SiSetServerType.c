
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_5__ {int ControllerOnly; int lock; int * PublicPorts; scalar_t__ NumPublicPort; scalar_t__ PublicIp; int * MemberPassword; scalar_t__ ControllerPort; int ControllerName; scalar_t__ Weight; scalar_t__ UpdatedServerType; TYPE_1__* Cedar; } ;
struct TYPE_4__ {int Bridge; } ;
typedef TYPE_2__ SERVER ;


 int Copy (int *,scalar_t__*,scalar_t__) ;
 scalar_t__ FARM_DEFAULT_WEIGHT ;
 int Free (int *) ;
 int IsZero (scalar_t__*,scalar_t__) ;
 int Lock (int ) ;
 scalar_t__ MAX_PUBLIC_PORT_NUM ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 scalar_t__ SHA1_SIZE ;
 int SiRebootServer (int) ;
 int StrCpy (int ,int,char*) ;
 int Unlock (int ) ;
 int * ZeroMalloc (scalar_t__) ;

void SiSetServerType(SERVER *s, UINT type,
      UINT ip, UINT num_port, UINT *ports,
      char *controller_name, UINT controller_port, UCHAR *password, UINT weight, bool controller_only)
{
 bool bridge;

 if (s == ((void*)0))
 {
  return;
 }
 if (type == SERVER_TYPE_FARM_MEMBER &&
  (num_port == 0 || ports == ((void*)0) || controller_name == ((void*)0) ||
  controller_port == 0 || password == ((void*)0) || num_port > MAX_PUBLIC_PORT_NUM))
 {
  return;
 }
 if (weight == 0)
 {
  weight = FARM_DEFAULT_WEIGHT;
 }

 bridge = s->Cedar->Bridge;

 Lock(s->lock);
 {

  s->UpdatedServerType = type;

  s->Weight = weight;


  if (type == SERVER_TYPE_FARM_MEMBER)
  {
   StrCpy(s->ControllerName, sizeof(s->ControllerName), controller_name);
   s->ControllerPort = controller_port;
   if (IsZero(password, SHA1_SIZE) == 0)
   {
    Copy(s->MemberPassword, password, SHA1_SIZE);
   }
   s->PublicIp = ip;
   s->NumPublicPort = num_port;
   if (s->PublicPorts != ((void*)0))
   {
    Free(s->PublicPorts);
   }
   s->PublicPorts = ZeroMalloc(num_port * sizeof(UINT));
   Copy(s->PublicPorts, ports, num_port * sizeof(UINT));
  }

  if (type == SERVER_TYPE_FARM_CONTROLLER)
  {
   s->ControllerOnly = controller_only;
  }
 }
 Unlock(s->lock);


 SiRebootServer(bridge);
}
