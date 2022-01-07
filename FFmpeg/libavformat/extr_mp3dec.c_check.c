
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint32_t ;
typedef int int64_t ;
struct TYPE_3__ {int frame_size; } ;
typedef TYPE_1__ MPADecodeHeader ;
typedef int AVIOContext ;


 unsigned int AV_RB32 (int *) ;
 int CHECK_SEEK_FAILED ;
 int CHECK_WRONG_HEADER ;
 int SEEK_SET ;
 int avio_read (int *,int *,int) ;
 int avio_seek (int *,int,int ) ;
 int avpriv_mpegaudio_decode_header (TYPE_1__*,unsigned int) ;
 scalar_t__ ff_mpa_check_header (unsigned int) ;

__attribute__((used)) static int check(AVIOContext *pb, int64_t pos, uint32_t *ret_header)
{
    int64_t ret = avio_seek(pb, pos, SEEK_SET);
    uint8_t header_buf[4];
    unsigned header;
    MPADecodeHeader sd;
    if (ret < 0)
        return CHECK_SEEK_FAILED;

    ret = avio_read(pb, &header_buf[0], 4);

    if (ret < 4)
        return CHECK_SEEK_FAILED;

    header = AV_RB32(&header_buf[0]);
    if (ff_mpa_check_header(header) < 0)
        return CHECK_WRONG_HEADER;
    if (avpriv_mpegaudio_decode_header(&sd, header) == 1)
        return CHECK_WRONG_HEADER;

    if (ret_header)
        *ret_header = header;
    return sd.frame_size;
}
