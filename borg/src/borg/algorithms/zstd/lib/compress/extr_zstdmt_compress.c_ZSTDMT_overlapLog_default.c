
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_strategy ;
__attribute__((used)) static int ZSTDMT_overlapLog_default(ZSTD_strategy strat)
{
    switch(strat)
    {
        case 133:
            return 9;
        case 134:
        case 135:
            return 8;
        case 136:
        case 128:
            return 7;
        case 129:
        case 130:
        case 132:
        case 131:
        default:;
    }
    return 6;
}
