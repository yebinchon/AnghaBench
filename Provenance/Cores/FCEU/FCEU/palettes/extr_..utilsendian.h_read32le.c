
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int32 ;
typedef int EMUFILE ;



inline int read32le(int32 *Bufo, EMUFILE*is) { return read32le((uint32*)Bufo,is); }
