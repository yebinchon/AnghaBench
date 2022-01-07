
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;
struct SingleRequest {int keepon; } ;
struct Curl_multi {scalar_t__ in_callback; } ;
struct Curl_easy {struct SingleRequest req; } ;
typedef int CURLMcode ;


 int CURLM_RECURSIVE_API_CALL ;
 int CURLM_STATE_PERFORM ;
 int Curl_attach_connnection (struct Curl_easy*,struct connectdata*) ;
 int Curl_init_do (struct Curl_easy*,int *) ;
 int KEEP_RECV ;
 int curl_multi_add_handle (struct Curl_multi*,struct Curl_easy*) ;
 int multistate (struct Curl_easy*,int ) ;

CURLMcode Curl_multi_add_perform(struct Curl_multi *multi,
                                 struct Curl_easy *data,
                                 struct connectdata *conn)
{
  CURLMcode rc;

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;

  rc = curl_multi_add_handle(multi, data);
  if(!rc) {
    struct SingleRequest *k = &data->req;



    Curl_init_do(data, ((void*)0));


    multistate(data, CURLM_STATE_PERFORM);
    Curl_attach_connnection(data, conn);
    k->keepon |= KEEP_RECV;
  }
  return rc;
}
