
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; void* member_2; int * member_0; } ;
typedef TYPE_1__ FileLogContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int O_BINARY ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int av_freep (char**) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 char* av_malloc (size_t) ;
 char* av_strdup (void*) ;
 int errno ;
 int file_log_ctx_class ;
 int free (void*) ;
 int mkstemp (char*) ;
 int open (char*,int,int) ;
 int snprintf (char*,size_t,char*,char const*) ;
 int strlen (char const*) ;
 void* tempnam (char*,char const*) ;

int avpriv_tempfile(const char *prefix, char **filename, int log_offset, void *log_ctx)
{
    FileLogContext file_log_ctx = { &file_log_ctx_class, log_offset, log_ctx };
    int fd = -1;

    void *ptr= tempnam(((void*)0), prefix);
    if(!ptr)
        ptr= tempnam(".", prefix);
    *filename = av_strdup(ptr);

    free(ptr);





    if (!*filename) {
        av_log(&file_log_ctx, AV_LOG_ERROR, "ff_tempfile: Cannot allocate file name\n");
        return AVERROR(ENOMEM);
    }







    fd = open(*filename, O_RDWR | 0 | O_CREAT | 0, 0600);
    if (fd < 0) {
        int err = AVERROR(errno);
        av_log(&file_log_ctx, AV_LOG_ERROR, "ff_tempfile: Cannot open temporary file %s\n", *filename);
        av_freep(filename);
        return err;
    }
    return fd;
}
