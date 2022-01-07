
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zimg_image_format ;
typedef int zimg_graph_builder_params ;
typedef int zimg_filter_graph ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (void**) ;
 void* av_malloc (size_t) ;
 int print_zimg_error (int *) ;
 int * zimg_filter_graph_build (int *,int *,int *) ;
 int zimg_filter_graph_free (int *) ;
 int zimg_filter_graph_get_tmp_size (int *,size_t*) ;

__attribute__((used)) static int graph_build(zimg_filter_graph **graph, zimg_graph_builder_params *params,
                       zimg_image_format *src_format, zimg_image_format *dst_format,
                       void **tmp, size_t *tmp_size)
{
    int ret;
    size_t size;

    zimg_filter_graph_free(*graph);
    *graph = zimg_filter_graph_build(src_format, dst_format, params);
    if (!*graph)
        return print_zimg_error(((void*)0));

    ret = zimg_filter_graph_get_tmp_size(*graph, &size);
    if (ret)
        return print_zimg_error(((void*)0));

    if (size > *tmp_size) {
        av_freep(tmp);
        *tmp = av_malloc(size);
        if (!*tmp)
            return AVERROR(ENOMEM);

        *tmp_size = size;
    }

    return 0;
}
