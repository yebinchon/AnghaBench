
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR_HTTP_BAD_REQUEST ;
 int AVERROR_HTTP_FORBIDDEN ;
 int AVERROR_HTTP_NOT_FOUND ;
 int AVERROR_HTTP_OTHER_4XX ;
 int AVERROR_HTTP_SERVER_ERROR ;
 int AVERROR_HTTP_UNAUTHORIZED ;

int ff_http_averror(int status_code, int default_averror)
{
    switch (status_code) {
        case 400: return AVERROR_HTTP_BAD_REQUEST;
        case 401: return AVERROR_HTTP_UNAUTHORIZED;
        case 403: return AVERROR_HTTP_FORBIDDEN;
        case 404: return AVERROR_HTTP_NOT_FOUND;
        default: break;
    }
    if (status_code >= 400 && status_code <= 499)
        return AVERROR_HTTP_OTHER_4XX;
    else if (status_code >= 500)
        return AVERROR_HTTP_SERVER_ERROR;
    else
        return default_averror;
}
