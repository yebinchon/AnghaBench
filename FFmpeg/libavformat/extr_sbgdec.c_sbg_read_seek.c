
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVFormatContext ;


 int sbg_read_seek2 (int *,int,int ,int ,int ,int ) ;

__attribute__((used)) static int sbg_read_seek(AVFormatContext *avf, int stream_index,
                         int64_t ts, int flags)
{
    return sbg_read_seek2(avf, stream_index, ts, ts, ts, 0);
}
