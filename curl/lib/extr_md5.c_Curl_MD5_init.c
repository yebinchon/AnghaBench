
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* md5_hashctx; TYPE_1__ const* md5_hash; } ;
struct TYPE_6__ {int md5_ctxtsize; int (* md5_init_func ) (void*) ;} ;
typedef TYPE_1__ MD5_params ;
typedef TYPE_2__ MD5_context ;


 int free (TYPE_2__*) ;
 void* malloc (int) ;
 int stub1 (void*) ;

MD5_context *Curl_MD5_init(const MD5_params *md5params)
{
  MD5_context *ctxt;


  ctxt = malloc(sizeof(*ctxt));

  if(!ctxt)
    return ctxt;

  ctxt->md5_hashctx = malloc(md5params->md5_ctxtsize);

  if(!ctxt->md5_hashctx) {
    free(ctxt);
    return ((void*)0);
  }

  ctxt->md5_hash = md5params;

  (*md5params->md5_init_func)(ctxt->md5_hashctx);

  return ctxt;
}
