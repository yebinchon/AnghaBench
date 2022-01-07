
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* last_added_dialogue; int cache_size; TYPE_1__* dialogue_cache; } ;
struct TYPE_5__ {scalar_t__ readorder; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ DialogueLine ;
typedef TYPE_2__ ASSContext ;



__attribute__((used)) static void insert_dialogue(ASSContext *ass, DialogueLine *dialogue)
{
    DialogueLine *cur, *next = ((void*)0), *prev = ((void*)0);


    if (ass->last_added_dialogue) {
        for (cur = ass->last_added_dialogue; cur; cur = cur->next) {
            if (cur->readorder > dialogue->readorder)
                break;
            prev = cur;
            next = cur->next;
        }
    }


    if (!prev) {
        next = ass->dialogue_cache;
        for (cur = next; cur != ass->last_added_dialogue; cur = cur->next) {
            if (cur->readorder > dialogue->readorder)
                break;
            prev = cur;
            next = cur->next;
        }
    }

    if (prev) {
        prev->next = dialogue;
        dialogue->prev = prev;
    } else {
        dialogue->prev = ass->dialogue_cache;
        ass->dialogue_cache = dialogue;
    }
    if (next) {
        next->prev = dialogue;
        dialogue->next = next;
    }
    ass->cache_size++;
    ass->last_added_dialogue = dialogue;
}
