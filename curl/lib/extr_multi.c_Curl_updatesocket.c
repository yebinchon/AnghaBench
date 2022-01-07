
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int multi; } ;


 int singlesocket (int ,struct Curl_easy*) ;

void Curl_updatesocket(struct Curl_easy *data)
{
  singlesocket(data->multi, data);
}
