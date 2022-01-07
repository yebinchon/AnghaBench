
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int elprintf (int ,char*,scalar_t__,int ) ;
 scalar_t__ pm_io (int ,int,scalar_t__) ;
 scalar_t__ rPM0 ;

__attribute__((used)) static void write_PM0(u32 d)
{
  u32 r = pm_io(0, 1, d);
  if (r != (u32)-1) return;



  rPM0 = d;
}
