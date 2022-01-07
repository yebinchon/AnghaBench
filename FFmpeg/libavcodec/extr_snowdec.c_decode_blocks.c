
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bytestream; scalar_t__ bytestream_end; } ;
struct TYPE_6__ {int b_width; int b_height; TYPE_1__ c; } ;
typedef TYPE_2__ SnowContext ;


 int AVERROR_INVALIDDATA ;
 int decode_q_branch (TYPE_2__*,int ,int,int) ;

__attribute__((used)) static int decode_blocks(SnowContext *s){
    int x, y;
    int w= s->b_width;
    int h= s->b_height;
    int res;

    for(y=0; y<h; y++){
        for(x=0; x<w; x++){
            if (s->c.bytestream >= s->c.bytestream_end)
                return AVERROR_INVALIDDATA;
            if ((res = decode_q_branch(s, 0, x, y)) < 0)
                return res;
        }
    }
    return 0;
}
