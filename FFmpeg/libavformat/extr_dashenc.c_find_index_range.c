
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_5__ {int (* io_open ) (TYPE_1__*,int **,char const*,int ,int *) ;} ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AVIO_FLAG_READ ;
 int AV_RB32 (int *) ;
 scalar_t__ AV_RL32 (int *) ;
 scalar_t__ MKTAG (char,char,char,char) ;
 int SEEK_SET ;
 int avio_read (int *,int *,int) ;
 int avio_seek (int *,int ,int ) ;
 int ff_format_io_close (TYPE_1__*,int **) ;
 int stub1 (TYPE_1__*,int **,char const*,int ,int *) ;

__attribute__((used)) static void find_index_range(AVFormatContext *s, const char *full_path,
                             int64_t pos, int *index_length)
{
    uint8_t buf[8];
    AVIOContext *pb;
    int ret;

    ret = s->io_open(s, &pb, full_path, AVIO_FLAG_READ, ((void*)0));
    if (ret < 0)
        return;
    if (avio_seek(pb, pos, SEEK_SET) != pos) {
        ff_format_io_close(s, &pb);
        return;
    }
    ret = avio_read(pb, buf, 8);
    ff_format_io_close(s, &pb);
    if (ret < 8)
        return;
    if (AV_RL32(&buf[4]) != MKTAG('s', 'i', 'd', 'x'))
        return;
    *index_length = AV_RB32(&buf[0]);
}
