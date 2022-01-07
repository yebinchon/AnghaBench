
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* m; } ;
struct TYPE_9__ {int * inst; TYPE_4__ se; } ;
struct TYPE_7__ {char* sp; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef TYPE_3__ Relist ;
typedef int Reinst ;


 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static Relist*
_renewemptythread(Relist *lp,
 Reinst *ip,
 int ms,
 char *sp)
{
 Relist *p;

 for(p=lp; p->inst; p++){
  if(p->inst == ip){
   if(sp < p->se.m[0].s.sp) {
    if(ms > 1)
     memset(&p->se, 0, sizeof(p->se));
    p->se.m[0].s.sp = sp;
   }
   return 0;
  }
 }
 p->inst = ip;
 if(ms > 1)
  memset(&p->se, 0, sizeof(p->se));
 p->se.m[0].s.sp = sp;
 (++p)->inst = 0;
 return p;
}
