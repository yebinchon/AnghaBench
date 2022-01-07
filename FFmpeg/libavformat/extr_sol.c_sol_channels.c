
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOL_STEREO ;

__attribute__((used)) static int sol_channels(int magic, int type)
{
    if (magic == 0x0B8D || !(type & SOL_STEREO)) return 1;
    return 2;
}
