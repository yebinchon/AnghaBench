
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int surface; } ;
typedef TYPE_1__ QSVFrame ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;
 TYPE_1__* av_mallocz (int) ;

__attribute__((used)) static QSVFrame *get_free_frame(QSVFrame **list)
{
    QSVFrame *out = *list;

    for (; out; out = out->next) {
        if (!out->surface)
            break;
    }

    if (!out) {
        out = av_mallocz(sizeof(*out));
        if (!out) {
            av_log(((void*)0), AV_LOG_ERROR, "Can't alloc new output frame.\n");
            return ((void*)0);
        }
        out->next = *list;
        *list = out;
    }

    return out;
}
