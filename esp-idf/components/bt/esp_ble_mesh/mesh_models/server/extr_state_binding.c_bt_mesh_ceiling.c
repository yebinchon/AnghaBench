
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32_t ;



__attribute__((used)) static s32_t bt_mesh_ceiling(float num)
{
    s32_t inum = (s32_t)num;

    if (num == (float)inum) {
        return inum;
    }

    return inum + 1;
}
