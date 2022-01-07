
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* pos; } ;
struct TYPE_5__ {char* buffer; int bufsize; TYPE_1__ data; } ;
typedef TYPE_2__ HttpParser ;
typedef int HttpContext ;


 int memmove (char*,char*,size_t) ;
 char* strstr (char*,char*) ;
 size_t strtoul (char*,int *,int) ;

bool httpParseChunkedBody(HttpContext* pContext, HttpParser* pParser, bool test) {
  char* pEnd = pParser->buffer + pParser->bufsize;
  char* pRet = pParser->data.pos;
  char* pSize = pParser->data.pos;
  size_t size = strtoul(pSize, ((void*)0), 16);
  if (size <= 0) return 0;

  while (size > 0) {
    char* pData = strstr(pSize, "\r\n");
    if (pData == ((void*)0) || pData >= pEnd) return 0;
    pData += 2;

    pSize = strstr(pData, "\r\n");
    if (pSize == ((void*)0) || pSize >= pEnd) return 0;
    if ((size_t)(pSize - pData) != size) return 0;
    pSize += 2;

    if (!test) {
      memmove(pRet, pData, size);
      pRet += size;
    }

    size = strtoul(pSize, ((void*)0), 16);
  }

  if (!test) {
    *pRet = '\0';
  }

  return 1;
}
