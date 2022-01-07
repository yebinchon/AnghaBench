
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int prefiltered; int* mem; int* image; int border; int w; int h; int* mem_pre; int* image_pre; int mutex; } ;
typedef TYPE_1__ BorderedPlane ;


 int const NLMEANS_PREFILTER_MODE_CSM3X3 ;
 int const NLMEANS_PREFILTER_MODE_CSM5X5 ;
 int const NLMEANS_PREFILTER_MODE_EDGEBOOST ;
 int const NLMEANS_PREFILTER_MODE_MEAN3X3 ;
 int const NLMEANS_PREFILTER_MODE_MEAN5X5 ;
 int const NLMEANS_PREFILTER_MODE_MEDIAN3X3 ;
 int const NLMEANS_PREFILTER_MODE_MEDIAN5X5 ;
 int const NLMEANS_PREFILTER_MODE_PASSTHRU ;
 int const NLMEANS_PREFILTER_MODE_REDUCE25 ;
 int const NLMEANS_PREFILTER_MODE_REDUCE50 ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;
 int* malloc (int const) ;
 int memcpy (int*,int const*,int const) ;
 int nlmeans_border (int*,int const,int const,int const) ;
 int nlmeans_filter_csm (int const*,int*,int const,int const,int const,int) ;
 int nlmeans_filter_edgeboost (int const*,int*,int const,int const,int const) ;
 int nlmeans_filter_mean (int const*,int*,int const,int const,int const,int) ;
 int nlmeans_filter_median (int const*,int*,int const,int const,int const,int) ;

__attribute__((used)) static void nlmeans_prefilter(BorderedPlane *src,
                              const int filter_type)
{
    hb_lock(src->mutex);
    if (src->prefiltered == 1)
    {
        hb_unlock(src->mutex);
        return;
    }

    if (filter_type & NLMEANS_PREFILTER_MODE_MEAN3X3 ||
        filter_type & NLMEANS_PREFILTER_MODE_MEAN5X5 ||
        filter_type & NLMEANS_PREFILTER_MODE_MEDIAN3X3 ||
        filter_type & NLMEANS_PREFILTER_MODE_MEDIAN5X5 ||
        filter_type & NLMEANS_PREFILTER_MODE_CSM3X3 ||
        filter_type & NLMEANS_PREFILTER_MODE_CSM5X5)
    {


        const uint8_t *mem = src->mem;
        const uint8_t *image = src->image;
        const int border = src->border;
        const int w = src->w;
        const int h = src->h;
        const int bw = w + 2 * border;
        const int bh = h + 2 * border;


        uint8_t *mem_pre = malloc(bw * bh * sizeof(uint8_t));
        uint8_t *image_pre = mem_pre + border + bw * border;
        for (int y = 0; y < h; y++)
        {
            memcpy(mem_pre + y * bw, mem + y * bw, bw);
        }


        if (filter_type & NLMEANS_PREFILTER_MODE_CSM5X5)
        {

            nlmeans_filter_csm(image, image_pre, w, h, border, 5);
        }
        else if (filter_type & NLMEANS_PREFILTER_MODE_CSM3X3)
        {

            nlmeans_filter_csm(image, image_pre, w, h, border, 3);
        }
        else if (filter_type & NLMEANS_PREFILTER_MODE_MEDIAN5X5)
        {

            nlmeans_filter_median(image, image_pre, w, h, border, 5);
        }
        else if (filter_type & NLMEANS_PREFILTER_MODE_MEDIAN3X3)
        {

            nlmeans_filter_median(image, image_pre, w, h, border, 3);
        }
        else if (filter_type & NLMEANS_PREFILTER_MODE_MEAN5X5)
        {

            nlmeans_filter_mean(image, image_pre, w, h, border, 5);
        }
        else if (filter_type & NLMEANS_PREFILTER_MODE_MEAN3X3)
        {

            nlmeans_filter_mean(image, image_pre, w, h, border, 3);
        }


        if (filter_type & NLMEANS_PREFILTER_MODE_EDGEBOOST)
        {
            nlmeans_filter_edgeboost(image, image_pre, w, h, border);
        }


        int wet = 1;
        int dry = 0;
        if (filter_type & NLMEANS_PREFILTER_MODE_REDUCE50 &&
            filter_type & NLMEANS_PREFILTER_MODE_REDUCE25)
        {
            wet = 1;
            dry = 3;
        }
        else if (filter_type & NLMEANS_PREFILTER_MODE_REDUCE50)
        {
            wet = 1;
            dry = 1;
        }
        else if (filter_type & NLMEANS_PREFILTER_MODE_REDUCE25)
        {
            wet = 3;
            dry = 1;
        }
        if (dry > 0)
        {
            for (int y = 0; y < bh; y++)
            {
                for (int x = 0; x < bw; x++)
                {
                    *(mem_pre + bw*y + x) = (uint8_t)((wet * *(mem_pre + bw*y + x) + dry * *(mem + bw*y + x)) / (wet + dry));
                }
            }
        }


        nlmeans_border(mem_pre, w, h, border);


        src->mem_pre = mem_pre;
        src->image_pre = image_pre;
        if (filter_type & NLMEANS_PREFILTER_MODE_PASSTHRU)
        {
            src->mem = src->mem_pre;
            src->image = src->image_pre;
        }

    }
    src->prefiltered = 1;
    hb_unlock(src->mutex);
}
