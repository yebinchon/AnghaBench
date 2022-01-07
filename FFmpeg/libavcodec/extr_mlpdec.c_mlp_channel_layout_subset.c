
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static int mlp_channel_layout_subset(uint64_t channel_layout, uint64_t mask)
{
    return channel_layout && ((channel_layout & mask) == channel_layout);
}
