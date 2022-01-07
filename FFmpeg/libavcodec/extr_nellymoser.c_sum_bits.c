
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NELLY_BIT_CAP ;
 int NELLY_FILL_LEN ;
 scalar_t__ av_clip (int,int ,int ) ;

__attribute__((used)) static int sum_bits(short *buf, short shift, short off)
{
    int i, ret = 0;

    for (i = 0; i < NELLY_FILL_LEN; i++) {
        int b = buf[i]-off;
        b = ((b>>(shift-1))+1)>>1;
        ret += av_clip(b, 0, NELLY_BIT_CAP);
    }

    return ret;
}
