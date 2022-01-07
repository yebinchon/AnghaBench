
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_DStreamInSize () ;

size_t ZBUFF_recommendedDInSize(void) { return ZSTD_DStreamInSize(); }
