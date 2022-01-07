
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_7__ {int ssaTrack; int line; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_6__ {scalar_t__ start; scalar_t__ stop; } ;
struct TYPE_8__ {int size; TYPE_1__ s; scalar_t__ data; } ;
typedef TYPE_3__ hb_buffer_t ;


 int ass_process_chunk (int ,char*,int ,scalar_t__,scalar_t__) ;
 int free (char*) ;
 char* hb_strdup_printf (char*,int ,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void process_sub(hb_filter_private_t *pv, hb_buffer_t *sub)
{
    int64_t start, dur;
    char *ssa, *tmp;




    tmp = strchr((char*)sub->data, ',');
    if (tmp == ((void*)0))
        return;

    ssa = hb_strdup_printf("%d%s", ++pv->line, tmp);




    start = sub->s.start;
    dur = sub->s.stop - sub->s.start;
    ass_process_chunk(pv->ssaTrack, ssa, sub->size, start, dur);
    free(ssa);
}
