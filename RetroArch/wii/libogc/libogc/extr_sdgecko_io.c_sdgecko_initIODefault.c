
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int BYTE_ADDRESSING ;
 int FALSE ;
 int LWP_InitQueue (int *) ;
 size_t MAX_DRIVE ;
 int NOT_INITIALIZED ;
 int TYPE_SD ;
 int __init_crc16 () ;
 int __init_crc7 () ;
 int * _initType ;
 int * _ioAddressingType ;
 int * _ioCardInserted ;
 int * _ioEXILock ;
 scalar_t__* _ioError ;
 int * _ioFlag ;
 scalar_t__ _ioRetryCnt ;

void sdgecko_initIODefault()
{
 u32 i;
 __init_crc7();
 __init_crc16();
 for(i=0;i<MAX_DRIVE;++i) {
  _ioRetryCnt = 0;
  _ioError[i] = 0;
  _ioCardInserted[i] = FALSE;
  _ioFlag[i] = NOT_INITIALIZED;
  _ioAddressingType[i] = BYTE_ADDRESSING;
  _initType[i] = TYPE_SD;
  LWP_InitQueue(&_ioEXILock[i]);
 }
}
