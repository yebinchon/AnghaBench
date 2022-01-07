
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterLink ;


 int AVERROR_EOF ;
 int AV_NOPTS_VALUE ;
 int ff_avfilter_link_set_out_status (int *,int ,int ) ;

void avfilter_link_set_closed(AVFilterLink *link, int closed)
{
    ff_avfilter_link_set_out_status(link, closed ? AVERROR_EOF : 0, AV_NOPTS_VALUE);
}
