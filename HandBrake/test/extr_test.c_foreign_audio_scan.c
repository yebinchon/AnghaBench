
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_str_vlen (char**) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static int foreign_audio_scan(char **subtracks)
{
    if (subtracks != ((void*)0))
    {
        int count = hb_str_vlen(subtracks);
        int ii;
        for (ii = 0; ii < count; ii++)
        {
            if (!strcasecmp(subtracks[0], "scan"))
            {
                return 1;
            }
        }
    }
    return 0;
}
