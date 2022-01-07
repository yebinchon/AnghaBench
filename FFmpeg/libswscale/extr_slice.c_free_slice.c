
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* plane; scalar_t__ should_free_lines; } ;
struct TYPE_5__ {int * tmp; int line; } ;
typedef TYPE_2__ SwsSlice ;


 int av_freep (int *) ;
 int free_lines (TYPE_2__*) ;

__attribute__((used)) static void free_slice(SwsSlice *s)
{
    int i;
    if (s) {
        if (s->should_free_lines)
            free_lines(s);
        for (i = 0; i < 4; ++i) {
            av_freep(&s->plane[i].line);
            s->plane[i].tmp = ((void*)0);
        }
    }
}
