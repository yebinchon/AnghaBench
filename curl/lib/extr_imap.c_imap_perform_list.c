
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct IMAP {char* custom_params; scalar_t__ mailbox; scalar_t__ custom; } ;
struct TYPE_2__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int IMAP_LIST ;
 int free (char*) ;
 char* imap_atom (scalar_t__,int) ;
 int imap_sendf (struct connectdata*,char*,char*,...) ;
 int state (struct connectdata*,int ) ;
 char* strdup (char*) ;

__attribute__((used)) static CURLcode imap_perform_list(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;

  if(imap->custom)

    result = imap_sendf(conn, "%s%s", imap->custom,
                        imap->custom_params ? imap->custom_params : "");
  else {

    char *mailbox = imap->mailbox ? imap_atom(imap->mailbox, 1)
                                  : strdup("");
    if(!mailbox)
      return CURLE_OUT_OF_MEMORY;


    result = imap_sendf(conn, "LIST \"%s\" *", mailbox);

    free(mailbox);
  }

  if(!result)
    state(conn, IMAP_LIST);

  return result;
}
