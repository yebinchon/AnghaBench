
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;


 int av_dict_set_int (int **,char const*,int,int ) ;

__attribute__((used)) static int set_metadata_int(AVDictionary **dict, const char *key, int value, int allow_zero)
{
    if (value || allow_zero) {
        return av_dict_set_int(dict, key, value, 0);
    }
    return 0;
}
