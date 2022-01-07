
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVTimecode ;
typedef int AVDictionary ;


 int AV_TIMECODE_STR_SIZE ;
 int av_dict_set (int **,char const*,int ,int ) ;
 int av_timecode_make_string (int *,char*,int ) ;

__attribute__((used)) static int mxf_add_timecode_metadata(AVDictionary **pm, const char *key, AVTimecode *tc)
{
    char buf[AV_TIMECODE_STR_SIZE];
    av_dict_set(pm, key, av_timecode_make_string(tc, buf, 0), 0);

    return 0;
}
