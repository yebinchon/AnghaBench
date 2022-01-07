
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int int16 ;
typedef int EMUFILE ;



inline int read16le(int16 *Bufo, EMUFILE*is) { return read16le((uint16*)Bufo,is); }
