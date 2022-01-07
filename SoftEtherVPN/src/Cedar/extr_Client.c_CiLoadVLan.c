
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_15__ {int * MacAddress; int Name; int Enabled; } ;
typedef TYPE_2__ UNIX_VLAN ;
typedef int UCHAR ;
struct TYPE_18__ {int Size; int * Buf; } ;
struct TYPE_14__ {int NicDownOnDisconnect; } ;
struct TYPE_17__ {TYPE_1__ Config; int UnixVLanList; } ;
struct TYPE_16__ {int Name; } ;
typedef TYPE_3__ FOLDER ;
typedef TYPE_4__ CLIENT ;
typedef TYPE_5__ BUF ;


 int Add (int ,TYPE_2__*) ;
 int CfgGetBool (TYPE_3__*,char*) ;
 int CfgGetStr (TYPE_3__*,char*,char*,int) ;
 int Copy (int *,int *,int) ;
 int FreeBuf (TYPE_5__*) ;
 scalar_t__ IsZero (int *,int) ;
 int MAX_SIZE ;
 int StrCpy (int ,int,int ) ;
 TYPE_5__* StrToBin (char*) ;
 int UnixVLanCreate (int ,int *,int) ;
 TYPE_2__* ZeroMalloc (int) ;

void CiLoadVLan(CLIENT *c, FOLDER *f)
{
 char tmp[MAX_SIZE];
 UCHAR addr[6];
 BUF *b;
 UNIX_VLAN *v;

 if (c == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 if (CfgGetStr(f, "MacAddress", tmp, sizeof(tmp)) == 0)
 {
  return;
 }

 b = StrToBin(tmp);
 if (b == ((void*)0))
 {
  return;
 }

 if (b->Size != 6)
 {
  FreeBuf(b);
  return;
 }

 Copy(addr, b->Buf, 6);

 FreeBuf(b);

 if (IsZero(addr, 6))
 {
  return;
 }

 v = ZeroMalloc(sizeof(UNIX_VLAN));
 Copy(v->MacAddress, addr, 6);
 StrCpy(v->Name, sizeof(v->Name), f->Name);
 v->Enabled = CfgGetBool(f, "Enabled");

 Add(c->UnixVLanList, v);




}
