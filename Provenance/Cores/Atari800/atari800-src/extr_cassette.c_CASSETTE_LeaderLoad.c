
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CASSETTE_TapeMotor (int ) ;
 int CASSETTE_ToggleRecord () ;
 scalar_t__ CASSETTE_record ;
 int CPU_regA ;
 scalar_t__ CPU_regX ;
 int CPU_regY ;
 int TRUE ;
 int cassette_gapdelay ;

void CASSETTE_LeaderLoad(void)
{
 if (CASSETTE_record)
  CASSETTE_ToggleRecord();
 CASSETTE_TapeMotor(TRUE);
 cassette_gapdelay = 9600;

 CPU_regA = 3;
 CPU_regX = 0;
 CPU_regY = 5;
}
