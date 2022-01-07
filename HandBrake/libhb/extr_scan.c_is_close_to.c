
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_close_to( int val, int target, int thresh )
{
    int diff = val - target;
    diff = diff < 0 ? -diff : diff;
    return diff < thresh;
}
