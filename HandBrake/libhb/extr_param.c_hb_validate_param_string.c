
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 int REG_EXTENDED ;
 int REG_ICASE ;
 int hb_log (char*,char const*) ;
 scalar_t__ regcomp (int *,char const*,int) ;
 scalar_t__ regexec (int *,char const*,int ,int *,int ) ;
 int regfree (int *) ;

int hb_validate_param_string(const char *regex_pattern, const char *param_string)
{
    regex_t regex_temp;

    if (regcomp(&regex_temp, regex_pattern, REG_EXTENDED|REG_ICASE) == 0)
    {
        if (regexec(&regex_temp, param_string, 0, ((void*)0), 0) == 0)
        {
            regfree(&regex_temp);
            return 0;
        }
    }
    else
    {
        hb_log("hb_validate_param_string: Error compiling regex for pattern (%s).\n", param_string);
    }

    regfree(&regex_temp);
    return 1;
}
