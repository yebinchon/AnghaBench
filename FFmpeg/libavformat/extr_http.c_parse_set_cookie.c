
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;


 int AVERROR (int ) ;
 int EINVAL ;
 int WHITESPACES ;
 scalar_t__ av_dict_set (int **,char*,char*,int ) ;
 int av_free (char*) ;
 char* av_strdup (char const*) ;
 char* av_strtok (char*,char*,char**) ;
 scalar_t__ strchr (int ,char) ;
 int strlen (char*) ;
 int strspn (char*,int ) ;

__attribute__((used)) static int parse_set_cookie(const char *set_cookie, AVDictionary **dict)
{
    char *param, *next_param, *cstr, *back;

    if (!set_cookie[0])
        return 0;

    if (!(cstr = av_strdup(set_cookie)))
        return AVERROR(EINVAL);


    back = &cstr[strlen(cstr)-1];
    while (strchr(WHITESPACES, *back)) {
        *back='\0';
        if (back == cstr)
            break;
        back--;
    }

    next_param = cstr;
    while ((param = av_strtok(next_param, ";", &next_param))) {
        char *name, *value;
        param += strspn(param, WHITESPACES);
        if ((name = av_strtok(param, "=", &value))) {
            if (av_dict_set(dict, name, value, 0) < 0) {
                av_free(cstr);
                return -1;
            }
        }
    }

    av_free(cstr);
    return 0;
}
