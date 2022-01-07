
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write_header_ret; int write_trailer_ret; int (* test_func ) (int *,int **,int *) ;char* test_name; int pkt_data; scalar_t__ print_summary_on_deinit; int options; } ;
typedef TYPE_1__ TestCase ;
typedef int AVFormatContext ;
typedef int AVDictionary ;


 int BUFFER_SIZE ;
 int av_dict_free (int **) ;
 int av_dict_parse_string (int **,int ,char*,char*,int ) ;
 int av_dict_set (int **,char*,char*,int ) ;
 char* av_err2str (int) ;
 int avformat_free_context (int *) ;
 int fprintf (int ,char*,char*) ;
 int initialize_fifo_tst_muxer_chain (int **) ;
 int printf (char*,char*,char*) ;
 int snprintf (char*,int,char*,int,int,int) ;
 int stderr ;
 int stub1 (int *,int **,int *) ;

__attribute__((used)) static int run_test(const TestCase *test)
{
    AVDictionary *opts = ((void*)0);
    AVFormatContext *oc = ((void*)0);
    char buffer[BUFFER_SIZE];
    int ret, ret1;

    ret = initialize_fifo_tst_muxer_chain(&oc);
    if (ret < 0) {
        fprintf(stderr, "Muxer initialization failed: %s\n", av_err2str(ret));
        goto end;
    }

    if (test->options) {
        ret = av_dict_parse_string(&opts, test->options, "=", ":", 0);
        if (ret < 0) {
            fprintf(stderr, "Failed to parse options: %s\n", av_err2str(ret));
            goto end;
        }
    }

    snprintf(buffer, BUFFER_SIZE,
             "print_deinit_summary=%d:write_header_ret=%d:write_trailer_ret=%d",
             (int)test->print_summary_on_deinit, test->write_header_ret,
             test->write_trailer_ret);
    ret = av_dict_set(&opts, "format_opts", buffer, 0);
    ret1 = av_dict_set(&opts, "fifo_format", "fifo_test", 0);
    if (ret < 0 || ret1 < 0) {
        fprintf(stderr, "Failed to set options for test muxer: %s\n",
                av_err2str(ret));
        goto end;
    }

    ret = test->test_func(oc, &opts, &test->pkt_data);

end:
    printf("%s: %s\n", test->test_name, ret < 0 ? "fail" : "ok");
    avformat_free_context(oc);
    av_dict_free(&opts);
    return ret;
}
