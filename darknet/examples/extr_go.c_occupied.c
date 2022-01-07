
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int occupied(float *b, int i)
{
    if (b[i]) return 1;
    if (b[i+19*19]) return -1;
    return 0;
}
