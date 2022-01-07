
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int AVDictionary ;


 int av_dict_set (int **,char const*,char*,int ) ;
 int snprintf (char*,int,char*,float) ;

__attribute__((used)) static int set_metadata_float(AVDictionary **dict, const char *key, float value, int allow_zero)
{
    if (value != 0 || allow_zero) {
        char tmp[64];
        snprintf(tmp, sizeof(tmp), "%f", value);
        return av_dict_set(dict, key, tmp, 0);
    }
    return 0;
}
