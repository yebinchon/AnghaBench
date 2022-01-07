
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__*** che; } ;
struct TYPE_8__ {TYPE_4__* priv_data; } ;
struct TYPE_7__ {TYPE_1__* ch; } ;
struct TYPE_6__ {int saved; } ;
typedef TYPE_2__ ChannelElement ;
typedef TYPE_3__ AVCodecContext ;
typedef TYPE_4__ AACContext ;


 int MAX_ELEM_ID ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void flush(AVCodecContext *avctx)
{
    AACContext *ac= avctx->priv_data;
    int type, i, j;

    for (type = 3; type >= 0; type--) {
        for (i = 0; i < MAX_ELEM_ID; i++) {
            ChannelElement *che = ac->che[type][i];
            if (che) {
                for (j = 0; j <= 1; j++) {
                    memset(che->ch[j].saved, 0, sizeof(che->ch[j].saved));
                }
            }
        }
    }
}
