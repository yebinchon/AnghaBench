
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imap_conn {int mailbox_uidvalidity; int mailbox; } ;
struct TYPE_4__ {struct imap_conn imapc; } ;
struct connectdata {struct Curl_easy* data; TYPE_2__ proto; } ;
struct IMAP {int mailbox; } ;
struct TYPE_3__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_URL_MALFORMAT ;
 int Curl_safefree (int ) ;
 int IMAP_SELECT ;
 int failf (struct Curl_easy*,char*) ;
 int free (char*) ;
 char* imap_atom (int ,int) ;
 int imap_sendf (struct connectdata*,char*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_perform_select(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;
  struct imap_conn *imapc = &conn->proto.imapc;
  char *mailbox;


  Curl_safefree(imapc->mailbox);
  Curl_safefree(imapc->mailbox_uidvalidity);


  if(!imap->mailbox) {
    failf(conn->data, "Cannot SELECT without a mailbox.");
    return CURLE_URL_MALFORMAT;
  }


  mailbox = imap_atom(imap->mailbox, 0);
  if(!mailbox)
    return CURLE_OUT_OF_MEMORY;


  result = imap_sendf(conn, "SELECT %s", mailbox);

  free(mailbox);

  if(!result)
    state(conn, IMAP_SELECT);

  return result;
}
