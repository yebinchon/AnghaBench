
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct imap_conn {char* resptag; int state; } ;
struct TYPE_5__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_3__* data; TYPE_2__ proto; } ;
struct IMAP {char* custom; } ;
struct TYPE_4__ {struct IMAP* protop; } ;
struct TYPE_6__ {TYPE_1__ req; } ;


 int FALSE ;





 int IMAP_RESP_NOT_OK ;
 int IMAP_RESP_OK ;
 int IMAP_RESP_PREAUTH ;


 int TRUE ;
 int failf (TYPE_3__*,char*) ;
 int imap_matchresp (char*,size_t,char*) ;
 int memcmp (char const*,char*,int) ;
 int strcasecompare (char*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool imap_endofresp(struct connectdata *conn, char *line, size_t len,
                           int *resp)
{
  struct IMAP *imap = conn->data->req.protop;
  struct imap_conn *imapc = &conn->proto.imapc;
  const char *id = imapc->resptag;
  size_t id_len = strlen(id);


  if(len >= id_len + 1 && !memcmp(id, line, id_len) && line[id_len] == ' ') {
    line += id_len + 1;
    len -= id_len + 1;

    if(len >= 2 && !memcmp(line, "OK", 2))
      *resp = IMAP_RESP_OK;
    else if(len >= 7 && !memcmp(line, "PREAUTH", 7))
      *resp = IMAP_RESP_PREAUTH;
    else
      *resp = IMAP_RESP_NOT_OK;

    return TRUE;
  }


  if(len >= 2 && !memcmp("* ", line, 2)) {
    switch(imapc->state) {

      case 132:
        if(!imap_matchresp(line, len, "CAPABILITY"))
          return FALSE;
        break;

      case 130:
        if((!imap->custom && !imap_matchresp(line, len, "LIST")) ||
          (imap->custom && !imap_matchresp(line, len, imap->custom) &&
           (!strcasecompare(imap->custom, "STORE") ||
            !imap_matchresp(line, len, "FETCH")) &&
           !strcasecompare(imap->custom, "SELECT") &&
           !strcasecompare(imap->custom, "EXAMINE") &&
           !strcasecompare(imap->custom, "SEARCH") &&
           !strcasecompare(imap->custom, "EXPUNGE") &&
           !strcasecompare(imap->custom, "LSUB") &&
           !strcasecompare(imap->custom, "UID") &&
           !strcasecompare(imap->custom, "NOOP")))
          return FALSE;
        break;

      case 128:


        break;

      case 131:
        if(!imap_matchresp(line, len, "FETCH"))
          return FALSE;
        break;

      case 129:
        if(!imap_matchresp(line, len, "SEARCH"))
          return FALSE;
        break;


      default:
        return FALSE;
    }

    *resp = '*';
    return TRUE;
  }





  if(imap && !imap->custom && ((len == 3 && line[0] == '+') ||
     (len >= 2 && !memcmp("+ ", line, 2)))) {
    switch(imapc->state) {

      case 133:
      case 134:
        *resp = '+';
        break;

      default:
        failf(conn->data, "Unexpected continuation response");
        *resp = -1;
        break;
    }

    return TRUE;
  }

  return FALSE;
}
