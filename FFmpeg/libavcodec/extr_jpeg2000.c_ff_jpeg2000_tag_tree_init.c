
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;
typedef TYPE_1__ Jpeg2000TgtNode ;


 TYPE_1__* av_mallocz_array (int ,int) ;
 int tag_tree_size (int,int) ;

__attribute__((used)) static Jpeg2000TgtNode *ff_jpeg2000_tag_tree_init(int w, int h)
{
    int pw = w, ph = h;
    Jpeg2000TgtNode *res, *t, *t2;
    int32_t tt_size;

    tt_size = tag_tree_size(w, h);

    t = res = av_mallocz_array(tt_size, sizeof(*t));
    if (!res)
        return ((void*)0);

    while (w > 1 || h > 1) {
        int i, j;
        pw = w;
        ph = h;

        w = (w + 1) >> 1;
        h = (h + 1) >> 1;
        t2 = t + pw * ph;

        for (i = 0; i < ph; i++)
            for (j = 0; j < pw; j++)
                t[i * pw + j].parent = &t2[(i >> 1) * w + (j >> 1)];

        t = t2;
    }
    t[0].parent = ((void*)0);
    return res;
}
