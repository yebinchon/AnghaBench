
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBSFList ;
typedef int AVBSFContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_bsf_get_null_filter (int **) ;
 int * av_bsf_list_alloc () ;
 int av_bsf_list_finalize (int **,int **) ;
 int av_bsf_list_free (int **) ;
 int av_free (char*) ;
 char* av_strdup (char const*) ;
 char* av_strtok (char*,char*,char**) ;
 int bsf_parse_single (char*,int *) ;

int av_bsf_list_parse_str(const char *str, AVBSFContext **bsf_lst)
{
    AVBSFList *lst;
    char *bsf_str, *buf, *dup, *saveptr;
    int ret;

    if (!str)
        return av_bsf_get_null_filter(bsf_lst);

    lst = av_bsf_list_alloc();
    if (!lst)
        return AVERROR(ENOMEM);

    if (!(dup = buf = av_strdup(str))) {
        ret = AVERROR(ENOMEM);
        goto end;
    }

    while (1) {
        bsf_str = av_strtok(buf, ",", &saveptr);
        if (!bsf_str)
            break;

        ret = bsf_parse_single(bsf_str, lst);
        if (ret < 0)
            goto end;

        buf = ((void*)0);
    }

    ret = av_bsf_list_finalize(&lst, bsf_lst);
end:
    if (ret < 0)
        av_bsf_list_free(&lst);
    av_free(dup);
    return ret;
}
