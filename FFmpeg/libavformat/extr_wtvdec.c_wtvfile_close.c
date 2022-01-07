
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* sectors; } ;
typedef TYPE_1__ WtvFile ;
struct TYPE_7__ {TYPE_1__* buffer; TYPE_1__* opaque; } ;
typedef TYPE_2__ AVIOContext ;


 int av_freep (TYPE_1__**) ;
 int avio_context_free (TYPE_2__**) ;

__attribute__((used)) static void wtvfile_close(AVIOContext *pb)
{
    WtvFile *wf = pb->opaque;
    av_freep(&wf->sectors);
    av_freep(&pb->opaque);
    av_freep(&pb->buffer);
    avio_context_free(&pb);
}
