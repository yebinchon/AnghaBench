
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; } ;
typedef TYPE_1__ LZOContext ;


 int AV_LZO_ERROR ;
 int INT_MAX ;
 int get_byte (TYPE_1__*) ;

__attribute__((used)) static inline int get_len(LZOContext *c, int x, int mask)
{
    int cnt = x & mask;
    if (!cnt) {
        while (!(x = get_byte(c))) {
            if (cnt >= INT_MAX - 1000) {
                c->error |= AV_LZO_ERROR;
                break;
            }
            cnt += 255;
        }
        cnt += mask + x;
    }
    return cnt;
}
