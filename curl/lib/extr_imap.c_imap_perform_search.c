
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct IMAP {int query; } ;
struct TYPE_3__ {struct IMAP* protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_URL_MALFORMAT ;
 int IMAP_SEARCH ;
 int failf (TYPE_2__*,char*) ;
 int imap_sendf (struct connectdata*,char*,int ) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_perform_search(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct IMAP *imap = conn->data->req.protop;


  if(!imap->query) {
    failf(conn->data, "Cannot SEARCH without a query string.");
    return CURLE_URL_MALFORMAT;
  }


  result = imap_sendf(conn, "SEARCH %s", imap->query);

  if(!result)
    state(conn, IMAP_SEARCH);

  return result;
}
