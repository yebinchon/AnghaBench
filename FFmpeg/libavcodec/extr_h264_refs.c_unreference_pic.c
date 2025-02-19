
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** delayed_pic; } ;
struct TYPE_5__ {int reference; } ;
typedef TYPE_1__ H264Picture ;
typedef TYPE_2__ H264Context ;


 int DELAYED_PIC_REF ;

__attribute__((used)) static inline int unreference_pic(H264Context *h, H264Picture *pic, int refmask)
{
    int i;
    if (pic->reference &= refmask) {
        return 0;
    } else {
        for(i = 0; h->delayed_pic[i]; i++)
            if(pic == h->delayed_pic[i]){
                pic->reference = DELAYED_PIC_REF;
                break;
            }
        return 1;
    }
}
