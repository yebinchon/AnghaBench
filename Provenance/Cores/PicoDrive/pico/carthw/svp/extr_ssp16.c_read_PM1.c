
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EL_ANOMALY ;
 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int elprintf (int,char*,scalar_t__,int ) ;
 scalar_t__ pm_io (int,int ,int ) ;
 scalar_t__ rPM1 ;

__attribute__((used)) static u32 read_PM1(void)
{
 u32 d = pm_io(1, 0, 0);
 if (d != (u32)-1) return d;

 elprintf(EL_SVP|EL_ANOMALY, "PM1 raw r %04x @ %04x", rPM1, GET_PPC_OFFS());
 return rPM1;
}
