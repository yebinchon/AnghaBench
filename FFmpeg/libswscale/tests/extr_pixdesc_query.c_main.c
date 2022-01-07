
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_8__ {char* class; scalar_t__ (* cond ) (int) ;} ;
struct TYPE_7__ {char* name; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;


 int AV_PIX_FMT_BGR32 ;
 int AV_PIX_FMT_BGR32_1 ;
 int AV_PIX_FMT_RGB32 ;
 int AV_PIX_FMT_RGB32_1 ;
 int FF_ARRAY_ELEMS (TYPE_2__*) ;
 int av_dynarray_add (char const***,int*,void*) ;
 int av_free (char const**) ;
 int av_pix_fmt_desc_get_id (TYPE_1__ const*) ;
 TYPE_1__* av_pix_fmt_desc_next (TYPE_1__ const*) ;
 int cmp_str ;
 int printf (char*,...) ;
 int qsort (char const**,int,int,int ) ;
 TYPE_2__* query_tab ;
 scalar_t__ stub1 (int) ;

int main(void)
{
    int i, j;

    for (i = 0; i < FF_ARRAY_ELEMS(query_tab); i++) {
        const char **pix_fmts = ((void*)0);
        int nb_pix_fmts = 0;
        const AVPixFmtDescriptor *pix_desc = ((void*)0);

        while ((pix_desc = av_pix_fmt_desc_next(pix_desc))) {
            enum AVPixelFormat pix_fmt = av_pix_fmt_desc_get_id(pix_desc);
            if (query_tab[i].cond(pix_fmt)) {
                const char *pix_name = pix_desc->name;
                if (pix_fmt == AV_PIX_FMT_RGB32) pix_name = "rgb32";
                else if (pix_fmt == AV_PIX_FMT_RGB32_1) pix_name = "rgb32_1";
                else if (pix_fmt == AV_PIX_FMT_BGR32) pix_name = "bgr32";
                else if (pix_fmt == AV_PIX_FMT_BGR32_1) pix_name = "bgr32_1";

                av_dynarray_add(&pix_fmts, &nb_pix_fmts, (void *)pix_name);
            }
        }

        if (pix_fmts) {
            qsort(pix_fmts, nb_pix_fmts, sizeof(*pix_fmts), cmp_str);

            printf("%s:\n", query_tab[i].class);
            for (j = 0; j < nb_pix_fmts; j++)
                printf("  %s\n", pix_fmts[j]);
            printf("\n");

            av_free(pix_fmts);
        }
    }
    return 0;
}
