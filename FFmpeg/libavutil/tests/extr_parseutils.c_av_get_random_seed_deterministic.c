
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int randomv ;

__attribute__((used)) static uint32_t av_get_random_seed_deterministic(void)
{
    return randomv = randomv * 1664525 + 1013904223;
}
