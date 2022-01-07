
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;
typedef int AVBitStreamFilter ;
typedef int AVBSFList ;
typedef int AVBSFContext ;


 int AVERROR_BSF_NOT_FOUND ;
 int AV_OPT_SEARCH_CHILDREN ;
 int av_bsf_alloc (int const*,int **) ;
 int av_bsf_free (int **) ;
 int * av_bsf_get_by_name (char const*) ;
 int av_bsf_list_append (int *,int *) ;
 int av_opt_set_dict2 (int *,int **,int ) ;

int av_bsf_list_append2(AVBSFList *lst, const char *bsf_name, AVDictionary ** options)
{
    int ret;
    const AVBitStreamFilter *filter;
    AVBSFContext *bsf;

    filter = av_bsf_get_by_name(bsf_name);
    if (!filter)
        return AVERROR_BSF_NOT_FOUND;

    ret = av_bsf_alloc(filter, &bsf);
    if (ret < 0)
        return ret;

    if (options) {
        ret = av_opt_set_dict2(bsf, options, AV_OPT_SEARCH_CHILDREN);
        if (ret < 0)
            goto end;
    }

    ret = av_bsf_list_append(lst, bsf);

end:
    if (ret < 0)
        av_bsf_free(&bsf);

    return ret;
}
