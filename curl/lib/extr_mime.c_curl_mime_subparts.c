
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_mimepart ;
typedef int curl_mime ;
typedef int CURLcode ;


 int Curl_mime_set_subparts (int *,int *,int ) ;
 int TRUE ;

CURLcode curl_mime_subparts(curl_mimepart *part, curl_mime *subparts)
{
  return Curl_mime_set_subparts(part, subparts, TRUE);
}
