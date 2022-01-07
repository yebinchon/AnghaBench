
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int buf ;
typedef int AVIOContext ;


 int FFMIN (int,scalar_t__) ;
 scalar_t__ avio_rb32 (int *) ;
 int avio_read (int *,char*,int) ;
 int avio_wb32 (int *,scalar_t__) ;
 int avio_write (int *,char*,int) ;
 scalar_t__ expect_tag (scalar_t__,scalar_t__) ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;

__attribute__((used)) static int copy_tag(AVIOContext *in, AVIOContext *out, int32_t tag_name)
{
    int32_t size, tag;

    size = avio_rb32(in);
    tag = avio_rb32(in);
    avio_wb32(out, size);
    avio_wb32(out, tag);
    if (expect_tag(tag, tag_name) != 0)
        return -1;
    size -= 8;
    while (size > 0) {
        char buf[1024];
        int len = FFMIN(sizeof(buf), size);
        int got;
        if ((got = avio_read(in, buf, len)) != len) {
            fprintf(stderr, "short read, wanted %d, got %d\n", len, got);
            break;
        }
        avio_write(out, buf, len);
        size -= len;
    }
    return 0;
}
