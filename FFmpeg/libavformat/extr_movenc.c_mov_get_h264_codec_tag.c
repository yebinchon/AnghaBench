
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* par; int * st; } ;
struct TYPE_4__ {int codec_tag; scalar_t__ field_order; scalar_t__ format; int width; int height; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVStream ;
typedef int AVFormatContext ;


 scalar_t__ AV_FIELD_PROGRESSIVE ;
 scalar_t__ AV_PIX_FMT_YUV420P10 ;
 scalar_t__ AV_PIX_FMT_YUV422P10 ;
 int MKTAG (char,char,char,char) ;
 int defined_frame_rate (int *,int *) ;

__attribute__((used)) static int mov_get_h264_codec_tag(AVFormatContext *s, MOVTrack *track)
{
    int tag = track->par->codec_tag;
    int interlaced = track->par->field_order > AV_FIELD_PROGRESSIVE;
    AVStream *st = track->st;
    int rate = defined_frame_rate(s, st);

    if (!tag)
        tag = MKTAG('a', 'v', 'c', 'i');

    if (track->par->format == AV_PIX_FMT_YUV420P10) {
        if (track->par->width == 960 && track->par->height == 720) {
            if (!interlaced) {
                if (rate == 24) tag = MKTAG('a','i','5','p');
                else if (rate == 25) tag = MKTAG('a','i','5','q');
                else if (rate == 30) tag = MKTAG('a','i','5','p');
                else if (rate == 50) tag = MKTAG('a','i','5','q');
                else if (rate == 60) tag = MKTAG('a','i','5','p');
            }
        } else if (track->par->width == 1440 && track->par->height == 1080) {
            if (!interlaced) {
                if (rate == 24) tag = MKTAG('a','i','5','3');
                else if (rate == 25) tag = MKTAG('a','i','5','2');
                else if (rate == 30) tag = MKTAG('a','i','5','3');
            } else {
                if (rate == 50) tag = MKTAG('a','i','5','5');
                else if (rate == 60) tag = MKTAG('a','i','5','6');
            }
        }
    } else if (track->par->format == AV_PIX_FMT_YUV422P10) {
        if (track->par->width == 1280 && track->par->height == 720) {
            if (!interlaced) {
                if (rate == 24) tag = MKTAG('a','i','1','p');
                else if (rate == 25) tag = MKTAG('a','i','1','q');
                else if (rate == 30) tag = MKTAG('a','i','1','p');
                else if (rate == 50) tag = MKTAG('a','i','1','q');
                else if (rate == 60) tag = MKTAG('a','i','1','p');
            }
        } else if (track->par->width == 1920 && track->par->height == 1080) {
            if (!interlaced) {
                if (rate == 24) tag = MKTAG('a','i','1','3');
                else if (rate == 25) tag = MKTAG('a','i','1','2');
                else if (rate == 30) tag = MKTAG('a','i','1','3');
            } else {
                if (rate == 25) tag = MKTAG('a','i','1','5');
                else if (rate == 50) tag = MKTAG('a','i','1','5');
                else if (rate == 60) tag = MKTAG('a','i','1','6');
            }
        } else if ( track->par->width == 4096 && track->par->height == 2160
                   || track->par->width == 3840 && track->par->height == 2160
                   || track->par->width == 2048 && track->par->height == 1080) {
            tag = MKTAG('a','i','v','x');
        }
    }

    return tag;
}
