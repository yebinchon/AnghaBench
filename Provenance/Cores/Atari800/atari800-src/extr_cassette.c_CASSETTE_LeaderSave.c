
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CASSETTE_TapeMotor (int ) ;
 int CASSETTE_ToggleRecord () ;
 int CASSETTE_record ;
 int CPU_regA ;
 scalar_t__ CPU_regX ;
 int CPU_regY ;
 int TRUE ;
 int cassette_gapdelay ;

void CASSETTE_LeaderSave(void)
{
 if (!CASSETTE_record)
 CASSETTE_ToggleRecord();
 CASSETTE_TapeMotor(TRUE);
 cassette_gapdelay = 19200;

 CPU_regA = 3;
 CPU_regX = 0;
 CPU_regY = 5;
}
