
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_str_vlen (char**) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static int count_subtitles(char **subtracks)
{
    int subtitle_track_count = 0;
    if (subtracks != ((void*)0))
    {
        int count = hb_str_vlen(subtracks);
        int ii;
        for (ii = 0; ii < count; ii++)
        {
            if (strcasecmp(subtracks[0], "scan") &&
                strcasecmp(subtracks[0], "none"))
            {
                subtitle_track_count++;
            }
        }
    }
    return subtitle_track_count;
}
