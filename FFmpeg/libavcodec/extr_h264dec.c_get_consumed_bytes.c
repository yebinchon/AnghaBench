
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_consumed_bytes(int pos, int buf_size)
{
    if (pos == 0)
        pos = 1;
    if (pos + 10 > buf_size)
        pos = buf_size;

    return pos;
}
