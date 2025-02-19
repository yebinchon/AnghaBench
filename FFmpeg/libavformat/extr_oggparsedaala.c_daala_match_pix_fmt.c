
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct DaalaPixFmtMap {scalar_t__ depth; int planes; scalar_t__* xdec; scalar_t__* ydec; } ;
struct TYPE_3__ {scalar_t__ depth; int planes; scalar_t__* xdec; scalar_t__* ydec; int ffmpeg_fmt; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* list_fmts ;

__attribute__((used)) static inline int daala_match_pix_fmt(struct DaalaPixFmtMap *fmt)
{
    int i, j;
    for (i = 0; i < FF_ARRAY_ELEMS(list_fmts); i++) {
        int match = 0;
        if (fmt->depth != list_fmts[i].depth)
            continue;
        if (fmt->planes != list_fmts[i].planes)
            continue;
        for (j = 0; j < fmt->planes; j++) {
            if (fmt->xdec[j] != list_fmts[i].xdec[j])
                continue;
            if (fmt->ydec[j] != list_fmts[i].ydec[j])
                continue;
            match++;
        }
        if (match == fmt->planes)
            return list_fmts[i].ffmpeg_fmt;
    }
    return -1;
}
