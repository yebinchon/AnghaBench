
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int inv_gamma; int gamma; int * cascaded1_tmp; int * cascaded_tmp; struct TYPE_8__** cascaded_context; int formatConvBuffer; int yuvTable; struct TYPE_8__* chrMmxextFilterCode; struct TYPE_8__* lumMmxextFilterCode; int chrMmxextFilterCodeSize; int lumMmxextFilterCodeSize; int hChrFilterPos; int hLumFilterPos; int vChrFilterPos; int vLumFilterPos; int vCCoeffsBank; int vYCoeffsBank; int hChrFilter; int hLumFilter; int vChrFilter; int vLumFilter; int * dither_error; } ;
typedef TYPE_1__ SwsContext ;


 int MEM_RELEASE ;
 int VirtualFree (TYPE_1__*,int ,int ) ;
 int av_free (TYPE_1__*) ;
 int av_freep (int *) ;
 int ff_free_filters (TYPE_1__*) ;
 int memset (TYPE_1__**,int ,int) ;
 int munmap (TYPE_1__*,int ) ;

void sws_freeContext(SwsContext *c)
{
    int i;
    if (!c)
        return;

    for (i = 0; i < 4; i++)
        av_freep(&c->dither_error[i]);

    av_freep(&c->vLumFilter);
    av_freep(&c->vChrFilter);
    av_freep(&c->hLumFilter);
    av_freep(&c->hChrFilter);





    av_freep(&c->vLumFilterPos);
    av_freep(&c->vChrFilterPos);
    av_freep(&c->hLumFilterPos);
    av_freep(&c->hChrFilterPos);
    av_freep(&c->yuvTable);
    av_freep(&c->formatConvBuffer);

    sws_freeContext(c->cascaded_context[0]);
    sws_freeContext(c->cascaded_context[1]);
    sws_freeContext(c->cascaded_context[2]);
    memset(c->cascaded_context, 0, sizeof(c->cascaded_context));
    av_freep(&c->cascaded_tmp[0]);
    av_freep(&c->cascaded1_tmp[0]);

    av_freep(&c->gamma);
    av_freep(&c->inv_gamma);

    ff_free_filters(c);

    av_free(c);
}
