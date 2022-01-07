
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * stack; } ;


 int EL_ANOMALY ;
 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int elprintf (int,char*,int,int ) ;
 int rSTACK ;
 TYPE_1__* ssp ;

__attribute__((used)) static void write_STACK(u32 d)
{
  if (rSTACK >= 6) {



  rSTACK = 0;
  }
  ssp->stack[rSTACK++] = d;
}
