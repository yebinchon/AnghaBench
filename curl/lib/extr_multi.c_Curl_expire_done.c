
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int expire_id ;


 int multi_deltimeout (struct Curl_easy*,int ) ;

void Curl_expire_done(struct Curl_easy *data, expire_id id)
{

  multi_deltimeout(data, id);
}
