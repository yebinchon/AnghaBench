
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,int*,int*) ;

__attribute__((used)) static int get_duration(const char *buf)
{
    int frame_start, frame_end;

    if (sscanf(buf, "{%d}{%d}", &frame_start, &frame_end) == 2)
        return frame_end - frame_start;
    return -1;
}
