
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* plane; } ;
typedef TYPE_2__ hb_buffer_t ;
struct TYPE_4__ {int width; int stride; int * data; } ;


 int DARK ;
 int absdiff (int,scalar_t__) ;
 scalar_t__ clampBlack (int ) ;

__attribute__((used)) static int row_all_dark( hb_buffer_t* buf, int row )
{
    int width = buf->plane[0].width;
    int stride = buf->plane[0].stride;
    uint8_t *luma = buf->plane[0].data + stride * row;


    int i, avg = 0;
    for ( i = 0; i < width; ++i )
    {
        avg += clampBlack( luma[i] );
    }
    avg /= width;
    if ( avg >= DARK )
        return 0;





    for ( i = 0; i < width; ++i )
    {
        if ( absdiff( avg, clampBlack( luma[i] ) ) > 16 )
            return 0;
    }
    return 1;
}
