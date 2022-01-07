
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 scalar_t__ HB_VALUE_TYPE_STRING ;
 double hb_value_get_double (int *) ;
 char* hb_value_get_string (int *) ;
 scalar_t__ hb_value_type (int *) ;
 int hb_video_framerate_get_from_name (char const*) ;
 int hb_video_framerate_get_limits (int*,int*,int*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int get_video_framerate(hb_value_t *rate_value)
{

    if (hb_value_type(rate_value) == HB_VALUE_TYPE_STRING)
    {
        int rate = 0;
        const char *rate_name = hb_value_get_string(rate_value);
        if (!strcasecmp(rate_name, "source") ||
            !strcasecmp(rate_name, "auto") ||
            !strcasecmp(rate_name, "same as source"))
        {
            return rate;
        }
        else
        {
            rate = hb_video_framerate_get_from_name(rate_name);
            if (rate != -1)
            {
                return rate;
            }
        }
    }


    int clock_min, clock_max, clock,
        frame_min, frame_max;
    hb_video_framerate_get_limits(&clock_min, &clock_max, &clock);
    frame_min = clock / clock_max;
    frame_max = clock / clock_min;
    double rate_d = hb_value_get_double(rate_value);
    if (rate_d >= frame_min && rate_d <= frame_max)
    {

        return (int)(clock / rate_d);
    }
    else if (rate_d >= clock_min && rate_d <= clock_max)
    {

        return (int)(rate_d);
    }


    return -1;
}
