
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;
typedef int AVBSFList ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int av_bsf_list_append2 (int *,char*,int **) ;
 int av_dict_free (int **) ;
 int av_dict_parse_string (int **,char*,char*,char*,int ) ;
 int av_free (char*) ;
 char* av_strdup (char const*) ;
 char* av_strtok (char*,char*,char**) ;

__attribute__((used)) static int bsf_parse_single(const char *str, AVBSFList *bsf_lst)
{
    char *bsf_name, *bsf_options_str, *buf;
    AVDictionary *bsf_options = ((void*)0);
    int ret = 0;

    if (!(buf = av_strdup(str)))
        return AVERROR(ENOMEM);

    bsf_name = av_strtok(buf, "=", &bsf_options_str);
    if (!bsf_name) {
        ret = AVERROR(EINVAL);
        goto end;
    }

    if (bsf_options_str) {
        ret = av_dict_parse_string(&bsf_options, bsf_options_str, "=", ":", 0);
        if (ret < 0)
            goto end;
    }

    ret = av_bsf_list_append2(bsf_lst, bsf_name, &bsf_options);

    av_dict_free(&bsf_options);
end:
    av_free(buf);
    return ret;
}
