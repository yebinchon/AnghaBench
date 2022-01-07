
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterFormats ;
typedef int AVFilterContext ;


 int SET_COMMON_FORMATS (int *,int *,int ,int ,int ,int ,int ) ;
 int ff_formats_ref ;
 int ff_formats_unref ;
 int formats ;
 int in_samplerates ;
 int out_samplerates ;

int ff_set_common_samplerates(AVFilterContext *ctx,
                              AVFilterFormats *samplerates)
{
    SET_COMMON_FORMATS(ctx, samplerates, in_samplerates, out_samplerates,
                       ff_formats_ref, ff_formats_unref, formats);
}
