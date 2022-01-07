
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int header_count; int write_index; int sp_count; } ;
typedef TYPE_1__ NUTContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int INDEX_STARTCODE ;
 int av_assert1 (int ) ;
 int avio_open_dyn_buf (int **) ;
 int put_packet (TYPE_1__*,int *,int *,int,int ) ;
 int write_headers (TYPE_2__*,int *) ;
 int write_index (TYPE_1__*,int *) ;

__attribute__((used)) static int nut_write_trailer(AVFormatContext *s)
{
    NUTContext *nut = s->priv_data;
    AVIOContext *bc = s->pb, *dyn_bc;
    int ret;

    while (nut->header_count < 3)
        write_headers(s, bc);

    if (!nut->sp_count)
        return 0;

    ret = avio_open_dyn_buf(&dyn_bc);
    if (ret >= 0) {
        av_assert1(nut->write_index);
        write_index(nut, dyn_bc);
        put_packet(nut, bc, dyn_bc, 1, INDEX_STARTCODE);
    }

    return 0;
}
