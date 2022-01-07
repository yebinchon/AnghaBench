
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_mimepart ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_SEND_FAIL_REWIND ;
 scalar_t__ CURL_SEEKFUNC_OK ;
 scalar_t__ mime_part_rewind (int *) ;

CURLcode Curl_mime_rewind(curl_mimepart *part)
{
  return mime_part_rewind(part) == CURL_SEEKFUNC_OK?
         CURLE_OK: CURLE_SEND_FAIL_REWIND;
}
