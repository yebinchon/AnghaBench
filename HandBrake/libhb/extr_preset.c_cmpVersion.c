
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cmpVersion(int a_major, int a_minor, int a_micro,
                      int b_major, int b_minor, int b_micro)
{
    if (a_major > b_major) return 1;
    if (a_major < b_major) return -1;
    if (a_minor > b_minor) return 1;
    if (a_minor < b_minor) return -1;
    if (a_micro > b_micro) return 1;
    if (a_micro < b_micro) return -1;
    return 0;
}
