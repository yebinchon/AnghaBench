
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 scalar_t__ ERANGE ;
 long LONG_MAX ;
 long LONG_MIN ;
 int av_log (int *,int ,char*) ;
 scalar_t__ errno ;
 int strlen (char const*) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static long int read_seek_range(const char *string_with_number)
{
    long int number;
    char *end_of_string = ((void*)0);
    number = strtol(string_with_number, &end_of_string, 10);
    if ((strlen(string_with_number) != end_of_string - string_with_number) || (number < 0)) {
        av_log(((void*)0), AV_LOG_ERROR, "Incorrect input ranges of seeking\n");
        return -1;
    }
    else if ((number == LONG_MAX) || (number == LONG_MIN)) {
        if (errno == ERANGE) {
            av_log(((void*)0), AV_LOG_ERROR, "Incorrect input ranges of seeking\n");
            return -1;
        }
    }
    return number;
}
