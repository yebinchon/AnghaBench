
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_ANOMALY ;
 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int elprintf (int,char*,int ) ;

__attribute__((used)) static u32 read_unknown(void)
{
 elprintf(EL_ANOMALY|EL_SVP, "ssp FIXME: unknown read @ %04x", GET_PPC_OFFS());
 return 0;
}
