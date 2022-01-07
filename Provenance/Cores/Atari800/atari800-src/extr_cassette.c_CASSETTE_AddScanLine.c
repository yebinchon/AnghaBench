
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CASSETTE_record ;
 int CassetteRead (int) ;
 int CassetteWrite (int) ;
 int FALSE ;

int CASSETTE_AddScanLine(void)
{

 if (CASSETTE_record) {
  CassetteWrite(114);
  return FALSE;
 } else
  return CassetteRead(114);
}
