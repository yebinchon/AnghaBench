
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
typedef int imapstate ;
struct TYPE_3__ {char* buffer; } ;
struct TYPE_4__ {TYPE_1__ state; } ;
typedef int CURLcode ;


 int CLIENTWRITE_BODY ;
 int CURLE_OK ;
 int CURLE_QUOTE_ERROR ;
 int Curl_client_write (struct connectdata*,int ,char*,size_t) ;
 int IMAP_RESP_OK ;
 int IMAP_STOP ;
 int state (struct connectdata*,int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static CURLcode imap_state_listsearch_resp(struct connectdata *conn,
                                           int imapcode,
                                           imapstate instate)
{
  CURLcode result = CURLE_OK;
  char *line = conn->data->state.buffer;
  size_t len = strlen(line);

  (void)instate;

  if(imapcode == '*') {

    line[len] = '\n';
    result = Curl_client_write(conn, CLIENTWRITE_BODY, line, len + 1);
    line[len] = '\0';
  }
  else if(imapcode != IMAP_RESP_OK)
    result = CURLE_QUOTE_ERROR;
  else

    state(conn, IMAP_STOP);

  return result;
}
