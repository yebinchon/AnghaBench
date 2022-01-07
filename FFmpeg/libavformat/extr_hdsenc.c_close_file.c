
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int out; } ;
typedef TYPE_1__ OutputStream ;
typedef int AVFormatContext ;


 int SEEK_SET ;
 int avio_flush (int ) ;
 int avio_seek (int ,int ,int ) ;
 int avio_tell (int ) ;
 int avio_wb32 (int ,int ) ;
 int ff_format_io_close (int *,int *) ;

__attribute__((used)) static void close_file(AVFormatContext *s, OutputStream *os)
{
    int64_t pos = avio_tell(os->out);
    avio_seek(os->out, 0, SEEK_SET);
    avio_wb32(os->out, pos);
    avio_flush(os->out);
    ff_format_io_close(s, &os->out);
}
