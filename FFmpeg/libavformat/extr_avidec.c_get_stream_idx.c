
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_stream_idx(const unsigned *d)
{
    if (d[0] >= '0' && d[0] <= '9' &&
        d[1] >= '0' && d[1] <= '9') {
        return (d[0] - '0') * 10 + (d[1] - '0');
    } else {
        return 100;
    }
}
