
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;


 int Curl_expire_clear (struct Curl_easy*) ;
 int detach_connnection (struct Curl_easy*) ;

__attribute__((used)) static void Curl_init_completed(struct Curl_easy *data)
{




  detach_connnection(data);
  Curl_expire_clear(data);
}
