
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* par; } ;
struct TYPE_4__ {scalar_t__ profile; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVFormatContext ;


 scalar_t__ FF_PROFILE_DNXHD ;
 scalar_t__ FF_PROFILE_UNKNOWN ;
 int MKTAG (char,char,char,char) ;

__attribute__((used)) static int mov_get_dnxhd_codec_tag(AVFormatContext *s, MOVTrack *track)
{
  int tag = MKTAG('A','V','d','n');
  if (track->par->profile != FF_PROFILE_UNKNOWN &&
      track->par->profile != FF_PROFILE_DNXHD)
      tag = MKTAG('A','V','d','h');
  return tag;
}
