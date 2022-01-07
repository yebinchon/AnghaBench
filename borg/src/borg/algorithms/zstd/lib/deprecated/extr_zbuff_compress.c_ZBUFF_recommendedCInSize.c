
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_CStreamInSize () ;

size_t ZBUFF_recommendedCInSize(void) { return ZSTD_CStreamInSize(); }
