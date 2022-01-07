
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOL_16BIT ;
 int SOL_DPCM ;

__attribute__((used)) static int sol_codec_type(int magic, int type)
{
    if (magic == 0x0B8D) return 1;
    if (type & SOL_DPCM)
    {
        if (type & SOL_16BIT) return 3;
        else if (magic == 0x0C8D) return 1;
        else return 2;
    }
    return -1;
}
