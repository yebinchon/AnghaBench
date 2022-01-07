
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ pix_fmt; } ;
typedef TYPE_1__ CinepakEncContext ;


 scalar_t__ AV_PIX_FMT_RGB24 ;
 int MB_SIZE ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void copy_mb(CinepakEncContext *s,
                    uint8_t *a_data[4], int a_linesize[4],
                    uint8_t *b_data[4], int b_linesize[4])
{
    int y, p;

    for (y = 0; y < MB_SIZE; y++)
        memcpy(a_data[0] + y * a_linesize[0], b_data[0] + y * b_linesize[0],
               MB_SIZE);

    if (s->pix_fmt == AV_PIX_FMT_RGB24) {
        for (p = 1; p <= 2; p++)
            for (y = 0; y < MB_SIZE / 2; y++)
                memcpy(a_data[p] + y * a_linesize[p],
                       b_data[p] + y * b_linesize[p],
                       MB_SIZE / 2);
    }
}
