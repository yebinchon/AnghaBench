
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Curl_easy {TYPE_1__* multi_easy; } ;
struct TYPE_2__ {int conn_cache; } ;
typedef int CURLcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 int GOOD_EASY_HANDLE (struct Curl_easy*) ;
 int upkeep (int *,struct Curl_easy*) ;

CURLcode curl_easy_upkeep(struct Curl_easy *data)
{

  if(!GOOD_EASY_HANDLE(data))
    return CURLE_BAD_FUNCTION_ARGUMENT;

  if(data->multi_easy) {

    return upkeep(&data->multi_easy->conn_cache, data);
  }
  else {

    return CURLE_OK;
  }
}
