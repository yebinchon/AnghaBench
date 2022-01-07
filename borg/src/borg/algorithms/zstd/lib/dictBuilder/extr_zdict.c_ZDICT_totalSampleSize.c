
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t ZDICT_totalSampleSize(const size_t* fileSizes, unsigned nbFiles)
{
    size_t total=0;
    unsigned u;
    for (u=0; u<nbFiles; u++) total += fileSizes[u];
    return total;
}
