
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;


 int Curl_pgrsSetDownloadSize (struct Curl_easy*,int) ;
 int Curl_pgrsSetUploadSize (struct Curl_easy*,int) ;

void Curl_pgrsResetTransferSizes(struct Curl_easy *data)
{
  Curl_pgrsSetDownloadSize(data, -1);
  Curl_pgrsSetUploadSize(data, -1);
}
