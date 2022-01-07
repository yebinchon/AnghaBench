
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int lossy; } ;
struct TYPE_5__ {int sum; int count; int gb; int lossy; scalar_t__ run2; scalar_t__ run; scalar_t__ save; } ;
typedef TYPE_1__ RICEContext ;
typedef TYPE_2__ LOCOContext ;


 int AVERROR_INVALIDDATA ;
 int INT_MIN ;
 int get_bits_count (int *) ;
 int init_get_bits8 (int *,int const*,int) ;
 int loco_get_rice (TYPE_1__*) ;
 int loco_predict (int*,int) ;

__attribute__((used)) static int loco_decode_plane(LOCOContext *l, uint8_t *data, int width, int height,
                             int stride, const uint8_t *buf, int buf_size)
{
    RICEContext rc;
    int val;
    int ret;
    int i, j;

    if(buf_size<=0)
        return -1;

    if ((ret = init_get_bits8(&rc.gb, buf, buf_size)) < 0)
        return ret;

    rc.save = 0;
    rc.run = 0;
    rc.run2 = 0;
    rc.lossy = l->lossy;

    rc.sum = 8;
    rc.count = 1;


    val = loco_get_rice(&rc);
    data[0] = 128 + val;

    for (i = 1; i < width; i++) {
        val = loco_get_rice(&rc);
        if (val == INT_MIN)
           return AVERROR_INVALIDDATA;
        data[i] = data[i - 1] + val;
    }
    data += stride;
    for (j = 1; j < height; j++) {

        val = loco_get_rice(&rc);
        if (val == INT_MIN)
           return AVERROR_INVALIDDATA;
        data[0] = data[-stride] + val;

        for (i = 1; i < width; i++) {
            val = loco_get_rice(&rc);
            if (val == INT_MIN)
                return -1;
            data[i] = loco_predict(&data[i], stride) + val;
        }
        data += stride;
    }

    return (get_bits_count(&rc.gb) + 7) >> 3;
}
