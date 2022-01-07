
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int EXIT_FAILURE ;
 char* av_err2str (int) ;
 int avformat_alloc_output_context2 (int **,int *,char*,char*) ;
 int * avformat_new_stream (int *,int *) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static int initialize_fifo_tst_muxer_chain(AVFormatContext **oc)
{
    int ret = 0;
    AVStream *s;

    ret = avformat_alloc_output_context2(oc, ((void*)0), "fifo", "-");
    if (ret) {
        fprintf(stderr, "Failed to create format context: %s\n",
                av_err2str(ret));
        return EXIT_FAILURE;
    }

    s = avformat_new_stream(*oc, ((void*)0));
    if (!s) {
        fprintf(stderr, "Failed to create stream: %s\n",
                av_err2str(ret));
        ret = AVERROR(ENOMEM);
    }

    return ret;
}
