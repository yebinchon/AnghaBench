#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp ;
struct curl_slist {int /*<<< orphan*/  data; struct curl_slist* next; } ;
struct connectdata {int /*<<< orphan*/ * sock; struct Curl_easy* data; } ;
struct TELNET {struct curl_slist* telnet_vars; int /*<<< orphan*/  subopt_xdisploc; int /*<<< orphan*/  subopt_ttype; scalar_t__ subbuffer; } ;
struct TYPE_2__ {scalar_t__ protop; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURL_IAC ; 
 int /*<<< orphan*/  CURL_NEW_ENV_VALUE ; 
 int /*<<< orphan*/  CURL_NEW_ENV_VAR ; 
 int /*<<< orphan*/  CURL_SB ; 
 int FUNC0 (struct TELNET*) ; 
 size_t FUNC1 (struct TELNET*) ; 
 int /*<<< orphan*/  CURL_SE ; 
#define  CURL_TELOPT_NEW_ENVIRON 130 
#define  CURL_TELOPT_TTYPE 129 
#define  CURL_TELOPT_XDISPLOC 128 
 int /*<<< orphan*/  CURL_TELQUAL_IS ; 
 size_t FIRSTSOCKET ; 
 int SOCKERRNO ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,char,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 

__attribute__((used)) static void FUNC8(struct connectdata *conn)
{
  struct curl_slist *v;
  unsigned char temp[2048];
  ssize_t bytes_written;
  size_t len;
  int err;
  char varname[128] = "";
  char varval[128] = "";
  struct Curl_easy *data = conn->data;
  struct TELNET *tn = (struct TELNET *)data->req.protop;

  FUNC4(data, '<', (unsigned char *)tn->subbuffer, FUNC1(tn) + 2);
  switch(FUNC0(tn)) {
    case CURL_TELOPT_TTYPE:
      len = FUNC6(tn->subopt_ttype) + 4 + 2;
      FUNC3((char *)temp, sizeof(temp),
                "%c%c%c%c%s%c%c", CURL_IAC, CURL_SB, CURL_TELOPT_TTYPE,
                CURL_TELQUAL_IS, tn->subopt_ttype, CURL_IAC, CURL_SE);
      bytes_written = FUNC7(conn->sock[FIRSTSOCKET], temp, len);
      if(bytes_written < 0) {
        err = SOCKERRNO;
        FUNC2(data,"Sending data failed (%d)",err);
      }
      FUNC4(data, '>', &temp[2], len-2);
      break;
    case CURL_TELOPT_XDISPLOC:
      len = FUNC6(tn->subopt_xdisploc) + 4 + 2;
      FUNC3((char *)temp, sizeof(temp),
                "%c%c%c%c%s%c%c", CURL_IAC, CURL_SB, CURL_TELOPT_XDISPLOC,
                CURL_TELQUAL_IS, tn->subopt_xdisploc, CURL_IAC, CURL_SE);
      bytes_written = FUNC7(conn->sock[FIRSTSOCKET], temp, len);
      if(bytes_written < 0) {
        err = SOCKERRNO;
        FUNC2(data,"Sending data failed (%d)",err);
      }
      FUNC4(data, '>', &temp[2], len-2);
      break;
    case CURL_TELOPT_NEW_ENVIRON:
      FUNC3((char *)temp, sizeof(temp),
                "%c%c%c%c", CURL_IAC, CURL_SB, CURL_TELOPT_NEW_ENVIRON,
                CURL_TELQUAL_IS);
      len = 4;

      for(v = tn->telnet_vars; v; v = v->next) {
        size_t tmplen = (FUNC6(v->data) + 1);
        /* Add the variable only if it fits */
        if(len + tmplen < (int)sizeof(temp)-6) {
          if(FUNC5(v->data, "%127[^,],%127s", varname, varval)) {
            FUNC3((char *)&temp[len], sizeof(temp) - len,
                      "%c%s%c%s", CURL_NEW_ENV_VAR, varname,
                      CURL_NEW_ENV_VALUE, varval);
            len += tmplen;
          }
        }
      }
      FUNC3((char *)&temp[len], sizeof(temp) - len,
                "%c%c", CURL_IAC, CURL_SE);
      len += 2;
      bytes_written = FUNC7(conn->sock[FIRSTSOCKET], temp, len);
      if(bytes_written < 0) {
        err = SOCKERRNO;
        FUNC2(data,"Sending data failed (%d)",err);
      }
      FUNC4(data, '>', &temp[2], len-2);
      break;
  }
  return;
}