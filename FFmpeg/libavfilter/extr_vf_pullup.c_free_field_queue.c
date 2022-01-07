
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* vars; struct TYPE_5__* combs; struct TYPE_5__* diffs; } ;
typedef TYPE_1__ PullupField ;


 int av_free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void free_field_queue(PullupField *head)
{
    PullupField *f = head;
    do {
        PullupField *next;
        if (!f)
            break;
        av_free(f->diffs);
        av_free(f->combs);
        av_free(f->vars);
        next = f->next;
        memset(f, 0, sizeof(*f));
        av_free(f);
        f = next;
    } while (f != head);
}
