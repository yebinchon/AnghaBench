
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int t ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_11__ {int IpAddress; } ;
struct TYPE_10__ {int IpAddress; int SubnetMask; int IpWaitList; } ;
typedef TYPE_1__ L3IF ;
typedef TYPE_2__ L3ARPWAIT ;


 int Delete (int ,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 int L3InsertArpTable (TYPE_1__*,int,int *) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int Zero (TYPE_2__*,int) ;

void L3KnownArp(L3IF *f, UINT ip, UCHAR *mac)
{
 L3ARPWAIT t, *w;

 if (f == ((void*)0) || ip == 0 || ip == 0xffffffff || mac == ((void*)0))
 {
  return;
 }

 if (!((f->IpAddress & f->SubnetMask) == (ip & f->SubnetMask)))
 {

  return;
 }


 Zero(&t, sizeof(t));
 t.IpAddress = ip;
 w = Search(f->IpWaitList, &t);
 if (w != ((void*)0))
 {
  Delete(f->IpWaitList, w);
  Free(w);
 }


 L3InsertArpTable(f, ip, mac);
}
