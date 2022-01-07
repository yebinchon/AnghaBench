
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int pp; } ;
struct TYPE_10__ {TYPE_4__ imapc; } ;
struct connectdata {TYPE_5__ proto; struct Curl_easy* data; } ;
struct IMAP {int transfer; scalar_t__ custom_params; scalar_t__ custom; scalar_t__ query; scalar_t__ partial; scalar_t__ section; scalar_t__ mindex; scalar_t__ uid; scalar_t__ uidvalidity; scalar_t__ mailbox; } ;
struct TYPE_7__ {scalar_t__ kind; } ;
struct TYPE_8__ {TYPE_2__ mimepost; scalar_t__ upload; int connect_only; } ;
struct TYPE_6__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_3__ set; TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_pp_sendf (int *,char*,char*) ;
 int Curl_safefree (scalar_t__) ;
 int FALSE ;
 int FTPTRANSFER_BODY ;
 int IMAP_APPEND_FINAL ;
 int IMAP_FETCH_FINAL ;
 scalar_t__ MIMEKIND_NONE ;
 int connclose (struct connectdata*,char*) ;
 scalar_t__ imap_block_statemach (struct connectdata*,int ) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_done(struct connectdata *conn, CURLcode status,
                          bool premature)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;

  (void)premature;

  if(!imap)
    return CURLE_OK;

  if(status) {
    connclose(conn, "IMAP done with bad status");
    result = status;
  }
  else if(!data->set.connect_only && !imap->custom &&
          (imap->uid || imap->mindex || data->set.upload ||
          data->set.mimepost.kind != MIMEKIND_NONE)) {


    if(!data->set.upload && data->set.mimepost.kind == MIMEKIND_NONE)
      state(conn, IMAP_FETCH_FINAL);
    else {

      result = Curl_pp_sendf(&conn->proto.imapc.pp, "%s", "");
      if(!result)
        state(conn, IMAP_APPEND_FINAL);
    }


    if(!result)
      result = imap_block_statemach(conn, FALSE);
  }


  Curl_safefree(imap->mailbox);
  Curl_safefree(imap->uidvalidity);
  Curl_safefree(imap->uid);
  Curl_safefree(imap->mindex);
  Curl_safefree(imap->section);
  Curl_safefree(imap->partial);
  Curl_safefree(imap->query);
  Curl_safefree(imap->custom);
  Curl_safefree(imap->custom_params);


  imap->transfer = FTPTRANSFER_BODY;

  return result;
}
