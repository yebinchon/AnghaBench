
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;


 int av_dict_copy (int **,int const*,int ) ;
 int av_dict_free (int **) ;
 int av_dict_get_string (int *,char**,char const,char const) ;
 int av_dict_parse_string (int **,char*,char*,char*,int ) ;
 int av_freep (char**) ;
 int print_dict (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void test_separators(const AVDictionary *m, const char pair, const char val)
{
    AVDictionary *dict = ((void*)0);
    char pairs[] = {pair , '\0'};
    char vals[] = {val, '\0'};

    char *buffer = ((void*)0);
    int ret;

    av_dict_copy(&dict, m, 0);
    print_dict(dict);
    av_dict_get_string(dict, &buffer, val, pair);
    printf("%s\n", buffer);
    av_dict_free(&dict);
    ret = av_dict_parse_string(&dict, buffer, vals, pairs, 0);
    printf("ret %d\n", ret);
    av_freep(&buffer);
    print_dict(dict);
    av_dict_free(&dict);
}
