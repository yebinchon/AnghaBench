
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int URLContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int EIO ;
 int av_log (int *,int ,char*,char const) ;
 scalar_t__ gopher_write (int *,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int gopher_connect(URLContext *h, const char *path)
{
    char buffer[1024];

    if (!*path) return AVERROR(EINVAL);
    switch (*++path) {
        case '5':
        case '9':
            path = strchr(path, '/');
            if (!path) return AVERROR(EINVAL);
            break;
        default:
            av_log(h, AV_LOG_WARNING,
                   "Gopher protocol type '%c' not supported yet!\n",
                   *path);
            return AVERROR(EINVAL);
    }


    snprintf(buffer, sizeof(buffer), "%s\r\n", path);

    if (gopher_write(h, buffer, strlen(buffer)) < 0)
        return AVERROR(EIO);

    return 0;
}
