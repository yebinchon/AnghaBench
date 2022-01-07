
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ expected_readorder; scalar_t__ cache_size; TYPE_1__* dialogue_cache; TYPE_1__* last_added_dialogue; } ;
struct TYPE_8__ {int pb; TYPE_3__* priv_data; } ;
struct TYPE_7__ {scalar_t__ readorder; int * prev; int line; struct TYPE_7__* next; } ;
typedef TYPE_1__ DialogueLine ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ ASSContext ;


 int AV_LOG_DEBUG ;
 int AV_LOG_WARNING ;
 int av_free (TYPE_1__*) ;
 int av_freep (int *) ;
 int av_log (TYPE_2__*,int ,char*,int,scalar_t__,...) ;
 int avio_print (int ,char*,int ,char*) ;

__attribute__((used)) static void purge_dialogues(AVFormatContext *s, int force)
{
    int n = 0;
    ASSContext *ass = s->priv_data;
    DialogueLine *dialogue = ass->dialogue_cache;

    while (dialogue && (dialogue->readorder == ass->expected_readorder || force)) {
        DialogueLine *next = dialogue->next;
        if (dialogue->readorder != ass->expected_readorder) {
            av_log(s, AV_LOG_WARNING, "ReadOrder gap found between %d and %d\n",
                   ass->expected_readorder, dialogue->readorder);
            ass->expected_readorder = dialogue->readorder;
        }
        avio_print(s->pb, "Dialogue: ", dialogue->line, "\r\n");
        if (dialogue == ass->last_added_dialogue)
            ass->last_added_dialogue = next;
        av_freep(&dialogue->line);
        av_free(dialogue);
        if (next)
            next->prev = ((void*)0);
        dialogue = ass->dialogue_cache = next;
        ass->expected_readorder++;
        n++;
    }
    ass->cache_size -= n;
    if (n > 1)
        av_log(s, AV_LOG_DEBUG, "wrote %d ASS lines, cached dialogues: %d, waiting for event id %d\n",
               n, ass->cache_size, ass->expected_readorder);
}
