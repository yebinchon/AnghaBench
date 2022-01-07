
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {struct Curl_easy* data; } ;
struct SingleRequest {scalar_t__ ignorebody; } ;
struct Curl_easy {struct SingleRequest req; } ;
typedef int contenc_writer ;
typedef int CURLcode ;


 int CLIENTWRITE_BODY ;
 int CURLE_OK ;
 int Curl_client_write (struct connectdata*,int ,char*,size_t) ;

__attribute__((used)) static CURLcode client_unencode_write(struct connectdata *conn,
                                      contenc_writer *writer,
                                      const char *buf, size_t nbytes)
{
  struct Curl_easy *data = conn->data;
  struct SingleRequest *k = &data->req;

  (void) writer;

  if(!nbytes || k->ignorebody)
    return CURLE_OK;

  return Curl_client_write(conn, CLIENTWRITE_BODY, (char *) buf, nbytes);
}
