
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {int seen; int want; size_t pos; int * bag; int size; int frames; } ;
typedef TYPE_1__ MP3Context ;
typedef TYPE_2__ AVPacket ;


 int XING_NUM_BAGS ;

__attribute__((used)) static void mp3_xing_add_frame(MP3Context *mp3, AVPacket *pkt)
{
    int i;

    mp3->frames++;
    mp3->seen++;
    mp3->size += pkt->size;

    if (mp3->want == mp3->seen) {
        mp3->bag[mp3->pos] = mp3->size;

        if (XING_NUM_BAGS == ++mp3->pos) {

            for (i = 1; i < XING_NUM_BAGS; i += 2)
                mp3->bag[i >> 1] = mp3->bag[i];


            mp3->want *= 2;

            mp3->pos = XING_NUM_BAGS / 2;
        }

        mp3->seen = 0;
    }
}
