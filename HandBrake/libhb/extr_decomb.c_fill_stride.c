
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* plane; } ;
typedef TYPE_2__ hb_buffer_t ;
struct TYPE_4__ {int height; int stride; int * data; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void fill_stride(hb_buffer_t * buf)
{
    int pp, ii;

    for (pp = 0; pp < 3; pp++)
    {
        uint8_t * src, * dst;

        src = buf->plane[pp].data + (buf->plane[pp].height - 1) *
              buf->plane[pp].stride;
        dst = buf->plane[pp].data + buf->plane[pp].height *
              buf->plane[pp].stride;
        for (ii = 0; ii < 3; ii++)
        {
            memcpy(dst, src, buf->plane[pp].stride);
            dst += buf->plane[pp].stride;
        }
    }
}
