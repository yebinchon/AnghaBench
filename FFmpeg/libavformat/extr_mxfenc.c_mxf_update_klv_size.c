
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVIOContext ;


 int SEEK_SET ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int klv_encode_ber4_length (int *,int) ;

__attribute__((used)) static void mxf_update_klv_size(AVIOContext *pb, int64_t pos)
{
    int64_t cur_pos = avio_tell(pb);
    int size = cur_pos - pos;
    avio_seek(pb, pos - 4, SEEK_SET);
    klv_encode_ber4_length(pb, size);
    avio_seek(pb, cur_pos, SEEK_SET);
}
