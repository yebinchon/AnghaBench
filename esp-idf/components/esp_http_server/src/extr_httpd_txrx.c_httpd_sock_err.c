
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGW (int ,int ,char const*,int) ;
 int HTTPD_SOCK_ERR_FAIL ;
 int HTTPD_SOCK_ERR_INVALID ;
 int HTTPD_SOCK_ERR_TIMEOUT ;
 int LOG_FMT (char*) ;
 int TAG ;
 int errno ;

__attribute__((used)) static int httpd_sock_err(const char *ctx, int sockfd)
{
    int errval;
    ESP_LOGW(TAG, LOG_FMT("error in %s : %d"), ctx, errno);

    switch(errno) {
    case 133:
    case 130:
        errval = HTTPD_SOCK_ERR_TIMEOUT;
        break;
    case 129:
    case 132:
    case 131:
    case 128:
        errval = HTTPD_SOCK_ERR_INVALID;
        break;
    default:
        errval = HTTPD_SOCK_ERR_FAIL;
    }
    return errval;
}
