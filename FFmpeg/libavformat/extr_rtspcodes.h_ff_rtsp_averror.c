
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum RTSPStatusCode { ____Placeholder_RTSPStatusCode } RTSPStatusCode ;


 int ff_http_averror (int,int) ;

__attribute__((used)) static inline int ff_rtsp_averror(enum RTSPStatusCode status_code, int default_averror)
{
    return ff_http_averror(status_code, default_averror);
}
