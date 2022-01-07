
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_silk_samplerate(int config)
{
    if (config < 4)
        return 8000;
    else if (config < 8)
        return 12000;
    return 16000;
}
