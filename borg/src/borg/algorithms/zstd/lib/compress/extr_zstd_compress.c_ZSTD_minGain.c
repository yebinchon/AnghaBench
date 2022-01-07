
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ strat ;
typedef int ZSTD_strategy ;
typedef int U32 ;


 int ZSTD_STATIC_ASSERT (int) ;
 int ZSTD_btultra ;
 int ZSTD_cParam_withinBounds (int ,int) ;
 int ZSTD_c_strategy ;
 int assert (int ) ;

__attribute__((used)) static size_t ZSTD_minGain(size_t srcSize, ZSTD_strategy strat)
{
    U32 const minlog = (strat>=ZSTD_btultra) ? (U32)(strat) - 1 : 6;
    ZSTD_STATIC_ASSERT(ZSTD_btultra == 8);
    assert(ZSTD_cParam_withinBounds(ZSTD_c_strategy, strat));
    return (srcSize >> minlog) + 2;
}
