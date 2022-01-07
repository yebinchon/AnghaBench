
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int t ;
typedef int UINT ;
struct TYPE_9__ {int IpAddress; } ;
struct TYPE_8__ {int ArpTable; } ;
typedef TYPE_1__ L3IF ;
typedef TYPE_2__ L3ARPENTRY ;


 TYPE_2__* Search (int ,TYPE_2__*) ;
 int Zero (TYPE_2__*,int) ;

L3ARPENTRY *L3SearchArpTable(L3IF *f, UINT ip)
{
 L3ARPENTRY *e, t;

 if (f == ((void*)0) || ip == 0 || ip == 0xffffffff)
 {
  return ((void*)0);
 }

 Zero(&t, sizeof(t));
 t.IpAddress = ip;

 e = Search(f->ArpTable, &t);

 return e;
}
