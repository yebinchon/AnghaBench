
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftp_parselist_data {int error; } ;
typedef int CURLcode ;



CURLcode Curl_ftp_parselist_geterror(struct ftp_parselist_data *pl_data)
{
  return pl_data->error;
}
