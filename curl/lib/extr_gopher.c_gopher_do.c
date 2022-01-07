
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {int * sock; struct Curl_easy* data; } ;
struct TYPE_3__ {char* path; char* query; } ;
struct TYPE_4__ {TYPE_1__ up; } ;
struct Curl_easy {TYPE_2__ state; } ;
typedef int ssize_t ;
typedef int curl_socket_t ;
typedef scalar_t__ CURLcode ;


 int CLIENTWRITE_HEADER ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLE_SEND_ERROR ;
 scalar_t__ Curl_client_write (struct connectdata*,int ,char*,int) ;
 scalar_t__ Curl_sendf (int ,struct connectdata*,char*) ;
 int Curl_setup_transfer (struct Curl_easy*,size_t,int,int ,int) ;
 scalar_t__ Curl_urldecode (struct Curl_easy*,char*,int ,char**,size_t*,int ) ;
 scalar_t__ Curl_write (struct connectdata*,int ,char*,int,int*) ;
 int DEBUGASSERT (char*) ;
 int FALSE ;
 size_t FIRSTSOCKET ;
 scalar_t__ SOCKET_WRITABLE (int ,int) ;
 int TRUE ;
 char* aprintf (char*,char*,char*) ;
 int curlx_uztosz (size_t) ;
 int failf (struct Curl_easy*,char*) ;
 int free (char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static CURLcode gopher_do(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  curl_socket_t sockfd = conn->sock[FIRSTSOCKET];
  char *gopherpath;
  char *path = data->state.up.path;
  char *query = data->state.up.query;
  char *sel = ((void*)0);
  char *sel_org = ((void*)0);
  ssize_t amount, k;
  size_t len;

  *done = TRUE;


  DEBUGASSERT(path);

  if(query)
    gopherpath = aprintf("%s?%s", path, query);
  else
    gopherpath = strdup(path);

  if(!gopherpath)
    return CURLE_OUT_OF_MEMORY;


  if(strlen(gopherpath) <= 2) {
    sel = (char *)"";
    len = strlen(sel);
    free(gopherpath);
  }
  else {
    char *newp;


    newp = gopherpath;
    newp += 2;


    result = Curl_urldecode(data, newp, 0, &sel, &len, FALSE);
    free(gopherpath);
    if(result)
      return result;
    sel_org = sel;
  }



  k = curlx_uztosz(len);

  for(;;) {
    result = Curl_write(conn, sockfd, sel, k, &amount);
    if(!result) {
      result = Curl_client_write(conn, CLIENTWRITE_HEADER, sel, amount);
      if(result)
        break;

      k -= amount;
      sel += amount;
      if(k < 1)
        break;
    }
    else
      break;
    if(SOCKET_WRITABLE(sockfd, 100) < 0) {
      result = CURLE_SEND_ERROR;
      break;
    }
  }

  free(sel_org);

  if(!result)


    result = Curl_sendf(sockfd, conn, "\r\n");
  if(result) {
    failf(data, "Failed sending Gopher request");
    return result;
  }
  result = Curl_client_write(conn, CLIENTWRITE_HEADER, (char *)"\r\n", 2);
  if(result)
    return result;

  Curl_setup_transfer(data, FIRSTSOCKET, -1, FALSE, -1);
  return CURLE_OK;
}
