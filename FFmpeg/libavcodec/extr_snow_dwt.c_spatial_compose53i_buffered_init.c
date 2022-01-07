
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int slice_buffer ;
struct TYPE_3__ {int y; void* b1; void* b0; } ;
typedef TYPE_1__ DWTCompose ;


 int avpriv_mirror (int,int) ;
 void* slice_buffer_get_line (int *,int) ;

__attribute__((used)) static void spatial_compose53i_buffered_init(DWTCompose *cs, slice_buffer *sb,
                                             int height, int stride_line)
{
    cs->b0 = slice_buffer_get_line(sb,
                                   avpriv_mirror(-1 - 1, height - 1) * stride_line);
    cs->b1 = slice_buffer_get_line(sb, avpriv_mirror(-1, height - 1) * stride_line);
    cs->y = -1;
}
