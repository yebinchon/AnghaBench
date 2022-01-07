
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVIO_FLAG_WRITE ;
 int AV_LOG_TRACE ;
 int av_dict_set (int **,char*,char*,int ) ;
 char* av_err2str (int) ;
 int av_log_set_level (int ) ;
 int avformat_network_init () ;
 int avio_accept (int *,int **) ;
 int avio_close (int *) ;
 int avio_open2 (int **,char const*,int ,int *,int **) ;
 int errno ;
 int exit (int ) ;
 int fork () ;
 int fprintf (int ,char*,...) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int process_client (int *,char const*) ;
 int stderr ;

int main(int argc, char **argv)
{
    AVDictionary *options = ((void*)0);
    AVIOContext *client = ((void*)0), *server = ((void*)0);
    const char *in_uri, *out_uri;
    int ret, pid;
    av_log_set_level(AV_LOG_TRACE);
    if (argc < 3) {
        printf("usage: %s input http://hostname[:port]\n"
               "API example program to serve http to multiple clients.\n"
               "\n", argv[0]);
        return 1;
    }

    in_uri = argv[1];
    out_uri = argv[2];

    avformat_network_init();

    if ((ret = av_dict_set(&options, "listen", "2", 0)) < 0) {
        fprintf(stderr, "Failed to set listen mode for server: %s\n", av_err2str(ret));
        return ret;
    }
    if ((ret = avio_open2(&server, out_uri, AVIO_FLAG_WRITE, ((void*)0), &options)) < 0) {
        fprintf(stderr, "Failed to open server: %s\n", av_err2str(ret));
        return ret;
    }
    fprintf(stderr, "Entering main loop.\n");
    for(;;) {
        if ((ret = avio_accept(server, &client)) < 0)
            goto end;
        fprintf(stderr, "Accepted client, forking process.\n");


        pid = fork();
        if (pid < 0) {
            perror("Fork failed");
            ret = AVERROR(errno);
            goto end;
        }
        if (pid == 0) {
            fprintf(stderr, "In child.\n");
            process_client(client, in_uri);
            avio_close(server);
            exit(0);
        }
        if (pid > 0)
            avio_close(client);
    }
end:
    avio_close(server);
    if (ret < 0 && ret != AVERROR_EOF) {
        fprintf(stderr, "Some errors occurred: %s\n", av_err2str(ret));
        return 1;
    }
    return 0;
}
