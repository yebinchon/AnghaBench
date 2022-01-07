
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftp_wc {scalar_t__ parser; } ;


 int Curl_ftp_parselist_data_free (scalar_t__*) ;
 int free (struct ftp_wc*) ;

__attribute__((used)) static void wc_data_dtor(void *ptr)
{
  struct ftp_wc *ftpwc = ptr;
  if(ftpwc && ftpwc->parser)
    Curl_ftp_parselist_data_free(&ftpwc->parser);
  free(ftpwc);
}
