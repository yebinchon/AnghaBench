
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ep; } ;
struct TYPE_7__ {scalar_t__ sp; } ;
struct TYPE_10__ {TYPE_2__ e; TYPE_1__ s; } ;
struct TYPE_9__ {TYPE_4__* m; } ;
typedef TYPE_3__ Resublist ;
typedef TYPE_4__ Resub ;


 int NSUBEXP ;

__attribute__((used)) static void
_renewmatch(Resub *mp, int ms, Resublist *sp)
{
 int i;

 if(mp==0 || ms<=0)
  return;
 if(mp[0].s.sp==0 || sp->m[0].s.sp<mp[0].s.sp ||
    (sp->m[0].s.sp==mp[0].s.sp && sp->m[0].e.ep>mp[0].e.ep)){
  for(i=0; i<ms && i<NSUBEXP; i++)
   mp[i] = sp->m[i];
  for(; i<ms; i++)
   mp[i].s.sp = mp[i].e.ep = 0;
 }
}
