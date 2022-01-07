
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int Weight; TYPE_1__* Cedar; } ;
struct TYPE_5__ {int CurrentSessions; } ;
typedef TYPE_2__ SERVER ;


 int Count (int ) ;
 int SiCalcPoint (TYPE_2__*,int ,int ) ;

UINT SiGetPoint(SERVER *s)
{
 UINT num_session;

 if (s == ((void*)0))
 {
  return 0;
 }

 num_session = Count(s->Cedar->CurrentSessions);

 return SiCalcPoint(s, num_session, s->Weight);
}
