
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HttpServer ;


 int gcDecodeMethod ;
 int httpAddMethod (int *,int *) ;

void gcInitHandle(HttpServer* pServer) { httpAddMethod(pServer, &gcDecodeMethod); }
