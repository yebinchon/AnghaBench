
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int md5_hashctx; TYPE_1__* md5_hash; } ;
struct TYPE_4__ {int (* md5_update_func ) (int ,unsigned char const*,unsigned int) ;} ;
typedef TYPE_2__ MD5_context ;
typedef int CURLcode ;


 int CURLE_OK ;
 int stub1 (int ,unsigned char const*,unsigned int) ;

CURLcode Curl_MD5_update(MD5_context *context,
                         const unsigned char *data,
                         unsigned int len)
{
  (*context->md5_hash->md5_update_func)(context->md5_hashctx, data, len);

  return CURLE_OK;
}
