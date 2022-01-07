
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PureInfo {int filetime; char* conn_primary_ip; char* conn_local_ip; scalar_t__ conn_protocol; scalar_t__ conn_scheme; scalar_t__ conn_local_port; scalar_t__ conn_primary_port; int * wouldredirect; int * contenttype; scalar_t__ numconnects; scalar_t__ httpauthavail; scalar_t__ proxyauthavail; scalar_t__ request_size; scalar_t__ header_size; int timecond; scalar_t__ httpversion; scalar_t__ httpproxycode; scalar_t__ httpcode; } ;
struct Progress {int is_t_startransfer_set; scalar_t__ t_redirect; scalar_t__ timespent; scalar_t__ t_starttransfer; scalar_t__ t_pretransfer; scalar_t__ t_appconnect; scalar_t__ t_connect; scalar_t__ t_nslookup; } ;
struct Curl_easy {struct PureInfo info; struct Progress progress; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_ssl_free_certinfo (struct Curl_easy*) ;
 int FALSE ;
 int free (int *) ;

CURLcode Curl_initinfo(struct Curl_easy *data)
{
  struct Progress *pro = &data->progress;
  struct PureInfo *info = &data->info;

  pro->t_nslookup = 0;
  pro->t_connect = 0;
  pro->t_appconnect = 0;
  pro->t_pretransfer = 0;
  pro->t_starttransfer = 0;
  pro->timespent = 0;
  pro->t_redirect = 0;
  pro->is_t_startransfer_set = 0;

  info->httpcode = 0;
  info->httpproxycode = 0;
  info->httpversion = 0;
  info->filetime = -1;
  info->timecond = FALSE;

  info->header_size = 0;
  info->request_size = 0;
  info->proxyauthavail = 0;
  info->httpauthavail = 0;
  info->numconnects = 0;

  free(info->contenttype);
  info->contenttype = ((void*)0);

  free(info->wouldredirect);
  info->wouldredirect = ((void*)0);

  info->conn_primary_ip[0] = '\0';
  info->conn_local_ip[0] = '\0';
  info->conn_primary_port = 0;
  info->conn_local_port = 0;

  info->conn_scheme = 0;
  info->conn_protocol = 0;




  return CURLE_OK;
}
