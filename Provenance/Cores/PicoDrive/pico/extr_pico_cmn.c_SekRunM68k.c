
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SekCycleAim ;
 int SekSyncM68k () ;

__attribute__((used)) static inline void SekRunM68k(int cyc)
{
  SekCycleAim += cyc;
  SekSyncM68k();
}
