
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_share {int specifier; int clientdata; int (* unlockfunc ) (struct Curl_easy*,int,int ) ;} ;
struct Curl_easy {struct Curl_share* share; } ;
typedef int curl_lock_data ;
typedef int CURLSHcode ;


 int CURLSHE_INVALID ;
 int CURLSHE_OK ;
 int stub1 (struct Curl_easy*,int,int ) ;

CURLSHcode
Curl_share_unlock(struct Curl_easy *data, curl_lock_data type)
{
  struct Curl_share *share = data->share;

  if(share == ((void*)0))
    return CURLSHE_INVALID;

  if(share->specifier & (1<<type)) {
    if(share->unlockfunc)
      share->unlockfunc (data, type, share->clientdata);
  }

  return CURLSHE_OK;
}
