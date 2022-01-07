
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_strategy ;


 int ZSTDMT_overlapLog_default (int ) ;
 int assert (int) ;

__attribute__((used)) static int ZSTDMT_overlapLog(int ovlog, ZSTD_strategy strat)
{
    assert(0 <= ovlog && ovlog <= 9);
    if (ovlog == 0) return ZSTDMT_overlapLog_default(strat);
    return ovlog;
}
