
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ voidpf ;
typedef scalar_t__ free_func ;
typedef scalar_t__ alloc_func ;
struct TYPE_5__ {scalar_t__ opaque; scalar_t__ zfree; scalar_t__ zalloc; } ;
struct TYPE_4__ {TYPE_3__ gzipStream; } ;
typedef TYPE_1__ HttpContext ;


 scalar_t__ MAX_WBITS ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 scalar_t__ Z_OK ;
 scalar_t__ deflateInit2 (TYPE_3__*,int ,int ,scalar_t__,int,int ) ;

int httpGzipCompressInit(HttpContext *pContext) {
  pContext->gzipStream.zalloc = (alloc_func) 0;
  pContext->gzipStream.zfree = (free_func) 0;
  pContext->gzipStream.opaque = (voidpf) 0;
  if (deflateInit2(&pContext->gzipStream, Z_DEFAULT_COMPRESSION, Z_DEFLATED, MAX_WBITS + 16, 8, Z_DEFAULT_STRATEGY) != Z_OK) {
    return -1;
  }

  return 0;
}
