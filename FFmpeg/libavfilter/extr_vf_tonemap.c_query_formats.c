
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;


 int ff_make_format_list (int ) ;
 int ff_set_common_formats (int *,int ) ;
 int pix_fmts ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    return ff_set_common_formats(ctx, ff_make_format_list(pix_fmts));
}
