
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;


 int av_dict_set (int **,char*,char*,int ) ;

__attribute__((used)) static int dict_set_if_not_null(AVDictionary ***metadata, char *keyword, char *value)
{
    if (metadata)
        av_dict_set(*metadata, keyword, value, 0);
    return 0;
}
