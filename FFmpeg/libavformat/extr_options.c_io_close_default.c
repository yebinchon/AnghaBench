
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;
typedef int AVFormatContext ;


 int avio_close (int *) ;

__attribute__((used)) static void io_close_default(AVFormatContext *s, AVIOContext *pb)
{
    avio_close(pb);
}
