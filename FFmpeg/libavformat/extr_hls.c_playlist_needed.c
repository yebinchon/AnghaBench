
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct playlist {int n_main_streams; TYPE_1__** main_streams; int ctx; TYPE_3__* parent; } ;
struct TYPE_6__ {int nb_programs; TYPE_2__** programs; } ;
struct TYPE_5__ {scalar_t__ discard; int nb_stream_indexes; int* stream_index; } ;
struct TYPE_4__ {scalar_t__ discard; int index; } ;
typedef TYPE_2__ AVProgram ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ AVDISCARD_ALL ;

__attribute__((used)) static int playlist_needed(struct playlist *pls)
{
    AVFormatContext *s = pls->parent;
    int i, j;
    int stream_needed = 0;
    int first_st;


    if (!pls->ctx || !pls->n_main_streams)
        return 1;


    for (i = 0; i < pls->n_main_streams; i++) {
        if (pls->main_streams[i]->discard < AVDISCARD_ALL) {
            stream_needed = 1;
            break;
        }
    }



    if (!stream_needed)
        return 0;





    first_st = pls->main_streams[0]->index;

    for (i = 0; i < s->nb_programs; i++) {
        AVProgram *program = s->programs[i];
        if (program->discard < AVDISCARD_ALL) {
            for (j = 0; j < program->nb_stream_indexes; j++) {
                if (program->stream_index[j] == first_st) {

                    return 1;
                }
            }
        }
    }


    return 0;
}
