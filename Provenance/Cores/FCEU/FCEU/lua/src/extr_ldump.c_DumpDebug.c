
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ strip; } ;
struct TYPE_10__ {int sizelineinfo; int sizelocvars; int sizeupvalues; int * upvalues; TYPE_1__* locvars; int lineinfo; } ;
struct TYPE_9__ {int startpc; int endpc; int varname; } ;
typedef TYPE_2__ Proto ;
typedef TYPE_3__ DumpState ;


 int DumpInt (int,TYPE_3__*) ;
 int DumpString (int ,TYPE_3__*) ;
 int DumpVector (int ,int,int,TYPE_3__*) ;

__attribute__((used)) static void DumpDebug(const Proto* f, DumpState* D)
{
 int i,n;
 n= (D->strip) ? 0 : f->sizelineinfo;
 DumpVector(f->lineinfo,n,sizeof(int),D);
 n= (D->strip) ? 0 : f->sizelocvars;
 DumpInt(n,D);
 for (i=0; i<n; i++)
 {
  DumpString(f->locvars[i].varname,D);
  DumpInt(f->locvars[i].startpc,D);
  DumpInt(f->locvars[i].endpc,D);
 }
 n= (D->strip) ? 0 : f->sizeupvalues;
 DumpInt(n,D);
 for (i=0; i<n; i++) DumpString(f->upvalues[i],D);
}
