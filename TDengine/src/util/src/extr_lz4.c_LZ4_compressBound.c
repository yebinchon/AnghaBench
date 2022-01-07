
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_COMPRESSBOUND (int) ;

int LZ4_compressBound(int isize) { return LZ4_COMPRESSBOUND(isize); }
