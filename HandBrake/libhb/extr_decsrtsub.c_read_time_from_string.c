
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct start_and_end {long start; long end; } ;


 int sscanf (char const*,char*,long*,long*,long*,long*,long*,long*,long*,long*) ;

__attribute__((used)) static int
read_time_from_string( const char* timeString, struct start_and_end *result )
{


    long houres1, minutes1, seconds1, milliseconds1,
         houres2, minutes2, seconds2, milliseconds2;
    int scanned;

    scanned = sscanf(timeString, "%ld:%ld:%ld,%ld --> %ld:%ld:%ld,%ld\n",
                    &houres1, &minutes1, &seconds1, &milliseconds1,
                    &houres2, &minutes2, &seconds2, &milliseconds2);
    if (scanned != 8)
    {
        scanned = sscanf(timeString, "%ld:%ld:%ld.%ld --> %ld:%ld:%ld.%ld\n",
                        &houres1, &minutes1, &seconds1, &milliseconds1,
                        &houres2, &minutes2, &seconds2, &milliseconds2);
        if (scanned != 8)
        {
            return 0;
        }
    }
    result->start =
        milliseconds1 + seconds1*1000 + minutes1*60*1000 + houres1*60*60*1000;
    result->end =
        milliseconds2 + seconds2*1000 + minutes2*60*1000 + houres2*60*60*1000;
    return 1;
}
