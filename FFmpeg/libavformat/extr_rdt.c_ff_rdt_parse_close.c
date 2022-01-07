
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDTDemuxContext ;


 int av_free (int *) ;

void
ff_rdt_parse_close(RDTDemuxContext *s)
{
    av_free(s);
}
