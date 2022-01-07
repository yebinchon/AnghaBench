
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** mpeg_f_code; } ;
typedef TYPE_1__ MpegEncContext ;



__attribute__((used)) static inline int mpeg2_get_f_code(const MpegEncContext *s)
{
    return (s->mpeg_f_code[0][0] << 12) | (s->mpeg_f_code[0][1] << 8) |
           (s->mpeg_f_code[1][0] << 4) | s->mpeg_f_code[1][1];
}
