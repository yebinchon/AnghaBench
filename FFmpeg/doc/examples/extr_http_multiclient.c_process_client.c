
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int buf ;
typedef int AVIOContext ;


 int AVERROR_EOF ;
 int AVERROR_HTTP_NOT_FOUND ;
 int AVIO_FLAG_READ ;
 int AV_LOG_ERROR ;
 int AV_LOG_TRACE ;
 int AV_OPT_SEARCH_CHILDREN ;
 int av_err2str (int) ;
 int av_freep (char**) ;
 int av_log (int *,int ,char*,...) ;
 int av_opt_get (int *,char*,int ,char**) ;
 int av_opt_set_int (int *,char*,int,int ) ;
 int avio_close (int *) ;
 int avio_flush (int *) ;
 int avio_handshake (int *) ;
 int avio_open2 (int **,char const*,int ,int *,int *) ;
 int avio_read (int *,char*,int) ;
 int avio_write (int *,char*,int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int strcmp (char*,char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void process_client(AVIOContext *client, const char *in_uri)
{
    AVIOContext *input = ((void*)0);
    uint8_t buf[1024];
    int ret, n, reply_code;
    uint8_t *resource = ((void*)0);
    while ((ret = avio_handshake(client)) > 0) {
        av_opt_get(client, "resource", AV_OPT_SEARCH_CHILDREN, &resource);


        if (resource && strlen(resource))
            break;
        av_freep(&resource);
    }
    if (ret < 0)
        goto end;
    av_log(client, AV_LOG_TRACE, "resource=%p\n", resource);
    if (resource && resource[0] == '/' && !strcmp((resource + 1), in_uri)) {
        reply_code = 200;
    } else {
        reply_code = AVERROR_HTTP_NOT_FOUND;
    }
    if ((ret = av_opt_set_int(client, "reply_code", reply_code, AV_OPT_SEARCH_CHILDREN)) < 0) {
        av_log(client, AV_LOG_ERROR, "Failed to set reply_code: %s.\n", av_err2str(ret));
        goto end;
    }
    av_log(client, AV_LOG_TRACE, "Set reply code to %d\n", reply_code);

    while ((ret = avio_handshake(client)) > 0);

    if (ret < 0)
        goto end;

    fprintf(stderr, "Handshake performed.\n");
    if (reply_code != 200)
        goto end;
    fprintf(stderr, "Opening input file.\n");
    if ((ret = avio_open2(&input, in_uri, AVIO_FLAG_READ, ((void*)0), ((void*)0))) < 0) {
        av_log(input, AV_LOG_ERROR, "Failed to open input: %s: %s.\n", in_uri,
               av_err2str(ret));
        goto end;
    }
    for(;;) {
        n = avio_read(input, buf, sizeof(buf));
        if (n < 0) {
            if (n == AVERROR_EOF)
                break;
            av_log(input, AV_LOG_ERROR, "Error reading from input: %s.\n",
                   av_err2str(n));
            break;
        }
        avio_write(client, buf, n);
        avio_flush(client);
    }
end:
    fprintf(stderr, "Flushing client\n");
    avio_flush(client);
    fprintf(stderr, "Closing client\n");
    avio_close(client);
    fprintf(stderr, "Closing input\n");
    avio_close(input);
    av_freep(&resource);
}
