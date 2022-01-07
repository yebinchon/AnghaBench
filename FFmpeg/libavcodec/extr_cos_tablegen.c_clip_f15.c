
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int clip_f15(int v)
{
    return v < -32767 ? -32767 :
           v > 32767 ? 32767 :
           v;
}
