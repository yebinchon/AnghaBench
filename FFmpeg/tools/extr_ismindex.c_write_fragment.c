
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;
typedef int AVIOContext ;


 int AVIO_FLAG_WRITE ;
 int MKBETAG (char,char,char,char) ;
 int av_strerror (int,char*,int) ;
 int avio_close (int *) ;
 int avio_flush (int *) ;
 int avio_open2 (int **,char const*,int ,int *,int *) ;
 int copy_tag (int *,int *,int ) ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;

__attribute__((used)) static int write_fragment(const char *filename, AVIOContext *in)
{
    AVIOContext *out = ((void*)0);
    int ret;

    if ((ret = avio_open2(&out, filename, AVIO_FLAG_WRITE, ((void*)0), ((void*)0))) < 0) {
        char errbuf[100];
        av_strerror(ret, errbuf, sizeof(errbuf));
        fprintf(stderr, "Unable to open %s: %s\n", filename, errbuf);
        return ret;
    }
    ret = copy_tag(in, out, MKBETAG('m', 'o', 'o', 'f'));
    if (!ret)
        ret = copy_tag(in, out, MKBETAG('m', 'd', 'a', 't'));

    avio_flush(out);
    avio_close(out);

    return ret;
}
