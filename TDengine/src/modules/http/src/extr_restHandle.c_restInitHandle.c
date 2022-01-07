
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HttpServer ;


 int httpAddMethod (int *,int *) ;
 int restDecodeMethod ;
 int restDecodeMethod2 ;

void restInitHandle(HttpServer* pServer) {
  httpAddMethod(pServer, &restDecodeMethod);
  httpAddMethod(pServer, &restDecodeMethod2);
}
