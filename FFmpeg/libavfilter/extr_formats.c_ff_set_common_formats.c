
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterFormats ;
typedef int AVFilterContext ;


 int SET_COMMON_FORMATS (int *,int *,int ,int ,int ,int ,int *) ;
 int ff_formats_ref ;
 int ff_formats_unref ;
 int in_formats ;
 int out_formats ;

int ff_set_common_formats(AVFilterContext *ctx, AVFilterFormats *formats)
{
    SET_COMMON_FORMATS(ctx, formats, in_formats, out_formats,
                       ff_formats_ref, ff_formats_unref, formats);
}
