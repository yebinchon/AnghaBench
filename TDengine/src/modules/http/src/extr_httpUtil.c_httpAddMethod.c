
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int methodScannerLen; int ** methodScanner; } ;
typedef TYPE_1__ HttpServer ;
typedef int HttpDecodeMethod ;


 int HTTP_METHOD_SCANNER_SIZE ;
 scalar_t__ httpCompareMethod (int *,int *) ;

void httpAddMethod(HttpServer *pServer, HttpDecodeMethod *pMethod) {
  int pos = 0;
  for (pos = 0; pos < pServer->methodScannerLen; ++pos) {
    if (httpCompareMethod(pServer->methodScanner[pos], pMethod)) {
      break;
    }
  }

  if (pos == pServer->methodScannerLen && pServer->methodScannerLen < HTTP_METHOD_SCANNER_SIZE) {
    pServer->methodScanner[pos] = pMethod;
    pServer->methodScannerLen++;
  }
}
