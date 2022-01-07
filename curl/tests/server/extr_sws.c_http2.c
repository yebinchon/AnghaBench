
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httprequest {int dummy; } ;


 int logmsg (char*) ;

__attribute__((used)) static void http2(struct httprequest *req)
{
  (void)req;
  logmsg("switched to http2");

}
