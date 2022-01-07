
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_3__ {char* filename; } ;
typedef TYPE_1__ URLContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ ;
 int AVIO_FLAG_WRITE ;
 int F_OK ;
 int R_OK ;
 int S_IRUSR ;
 int S_IWUSR ;
 int W_OK ;
 scalar_t__ access (char const*,int ) ;
 int av_strstart (char const*,char*,char const**) ;
 int errno ;
 int stat (char const*,struct stat*) ;
 int win32_stat (char const*,struct stat*) ;

__attribute__((used)) static int file_check(URLContext *h, int mask)
{
    int ret = 0;
    const char *filename = h->filename;
    av_strstart(filename, "file:", &filename);

    {
    struct stat st;

    ret = stat(filename, &st);



    if (ret < 0)
        return AVERROR(errno);

    ret |= st.st_mode&S_IRUSR ? mask&AVIO_FLAG_READ : 0;
    ret |= st.st_mode&S_IWUSR ? mask&AVIO_FLAG_WRITE : 0;

    }
    return ret;
}
