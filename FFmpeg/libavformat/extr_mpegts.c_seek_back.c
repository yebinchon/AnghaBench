
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int seekable; } ;
typedef TYPE_1__ AVIOContext ;
typedef int AVFormatContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int SEEK_SET ;
 int av_log (int *,int ,char*) ;
 scalar_t__ avio_seek (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void seek_back(AVFormatContext *s, AVIOContext *pb, int64_t pos) {




    if (avio_seek(pb, pos, SEEK_SET) < 0)
        av_log(s, (pb->seekable & AVIO_SEEKABLE_NORMAL) ? AV_LOG_ERROR : AV_LOG_INFO, "Unable to seek back to the start\n");
}
