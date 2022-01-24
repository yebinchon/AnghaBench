#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct imap_conn {char* resptag; int state; } ;
struct TYPE_5__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_3__* data; TYPE_2__ proto; } ;
struct IMAP {char* custom; } ;
struct TYPE_4__ {struct IMAP* protop; } ;
struct TYPE_6__ {TYPE_1__ req; } ;

/* Variables and functions */
 int FALSE ; 
#define  IMAP_APPEND 134 
#define  IMAP_AUTHENTICATE 133 
#define  IMAP_CAPABILITY 132 
#define  IMAP_FETCH 131 
#define  IMAP_LIST 130 
 int IMAP_RESP_NOT_OK ; 
 int IMAP_RESP_OK ; 
 int IMAP_RESP_PREAUTH ; 
#define  IMAP_SEARCH 129 
#define  IMAP_SELECT 128 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static bool FUNC5(struct connectdata *conn, char *line, size_t len,
                           int *resp)
{
  struct IMAP *imap = conn->data->req.protop;
  struct imap_conn *imapc = &conn->proto.imapc;
  const char *id = imapc->resptag;
  size_t id_len = FUNC4(id);

  /* Do we have a tagged command response? */
  if(len >= id_len + 1 && !FUNC2(id, line, id_len) && line[id_len] == ' ') {
    line += id_len + 1;
    len -= id_len + 1;

    if(len >= 2 && !FUNC2(line, "OK", 2))
      *resp = IMAP_RESP_OK;
    else if(len >= 7 && !FUNC2(line, "PREAUTH", 7))
      *resp = IMAP_RESP_PREAUTH;
    else
      *resp = IMAP_RESP_NOT_OK;

    return TRUE;
  }

  /* Do we have an untagged command response? */
  if(len >= 2 && !FUNC2("* ", line, 2)) {
    switch(imapc->state) {
      /* States which are interested in untagged responses */
      case IMAP_CAPABILITY:
        if(!FUNC1(line, len, "CAPABILITY"))
          return FALSE;
        break;

      case IMAP_LIST:
        if((!imap->custom && !FUNC1(line, len, "LIST")) ||
          (imap->custom && !FUNC1(line, len, imap->custom) &&
           (!FUNC3(imap->custom, "STORE") ||
            !FUNC1(line, len, "FETCH")) &&
           !FUNC3(imap->custom, "SELECT") &&
           !FUNC3(imap->custom, "EXAMINE") &&
           !FUNC3(imap->custom, "SEARCH") &&
           !FUNC3(imap->custom, "EXPUNGE") &&
           !FUNC3(imap->custom, "LSUB") &&
           !FUNC3(imap->custom, "UID") &&
           !FUNC3(imap->custom, "NOOP")))
          return FALSE;
        break;

      case IMAP_SELECT:
        /* SELECT is special in that its untagged responses do not have a
           common prefix so accept anything! */
        break;

      case IMAP_FETCH:
        if(!FUNC1(line, len, "FETCH"))
          return FALSE;
        break;

      case IMAP_SEARCH:
        if(!FUNC1(line, len, "SEARCH"))
          return FALSE;
        break;

      /* Ignore other untagged responses */
      default:
        return FALSE;
    }

    *resp = '*';
    return TRUE;
  }

  /* Do we have a continuation response? This should be a + symbol followed by
     a space and optionally some text as per RFC-3501 for the AUTHENTICATE and
     APPEND commands and as outlined in Section 4. Examples of RFC-4959 but
     some e-mail servers ignore this and only send a single + instead. */
  if(imap && !imap->custom && ((len == 3 && line[0] == '+') ||
     (len >= 2 && !FUNC2("+ ", line, 2)))) {
    switch(imapc->state) {
      /* States which are interested in continuation responses */
      case IMAP_AUTHENTICATE:
      case IMAP_APPEND:
        *resp = '+';
        break;

      default:
        FUNC0(conn->data, "Unexpected continuation response");
        *resp = -1;
        break;
    }

    return TRUE;
  }

  return FALSE; /* Nothing for us */
}