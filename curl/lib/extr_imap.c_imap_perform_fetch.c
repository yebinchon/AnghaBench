
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct IMAP {char* section; scalar_t__ mindex; scalar_t__ partial; scalar_t__ uid; } ;
struct TYPE_3__ {struct IMAP* protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_URL_MALFORMAT ;
 int IMAP_FETCH ;
 int failf (TYPE_2__*,char*) ;
 int imap_sendf (struct connectdata*,char*,scalar_t__,char*,...) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_perform_fetch(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct IMAP *imap = conn->data->req.protop;

  if(imap->uid) {


    if(imap->partial)
      result = imap_sendf(conn, "UID FETCH %s BODY[%s]<%s>",
                            imap->uid,
                            imap->section ? imap->section : "",
                            imap->partial);
    else
      result = imap_sendf(conn, "UID FETCH %s BODY[%s]",
                            imap->uid,
                            imap->section ? imap->section : "");
  }
  else if(imap->mindex) {


    if(imap->partial)
      result = imap_sendf(conn, "FETCH %s BODY[%s]<%s>",
                            imap->mindex,
                            imap->section ? imap->section : "",
                            imap->partial);
    else
      result = imap_sendf(conn, "FETCH %s BODY[%s]",
                            imap->mindex,
                            imap->section ? imap->section : "");
  }
  else {
        failf(conn->data, "Cannot FETCH without a UID.");
        return CURLE_URL_MALFORMAT;
  }
  if(!result)
    state(conn, IMAP_FETCH);

  return result;
}
