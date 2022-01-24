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
struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_5__ {scalar_t__ user_passwd; } ;
struct connectdata {int /*<<< orphan*/  user; TYPE_2__ bits; struct Curl_easy* data; } ;
struct TELNET {char subopt_wsx; char subopt_wsy; struct curl_slist* telnet_vars; void** him_preferred; void** us_preferred; scalar_t__* subopt_xdisploc; scalar_t__* subopt_ttype; } ;
struct TYPE_6__ {struct curl_slist* telnet_options; } ;
struct TYPE_4__ {scalar_t__ protop; } ;
struct Curl_easy {TYPE_3__ set; TYPE_1__ req; } ;
typedef  int /*<<< orphan*/  option_arg ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 scalar_t__ CURLE_TELNET_OPTION_SYNTAX ; 
 scalar_t__ CURLE_UNKNOWN_OPTION ; 
 void* CURL_NO ; 
 size_t CURL_TELOPT_BINARY ; 
 size_t CURL_TELOPT_NAWS ; 
 size_t CURL_TELOPT_NEW_ENVIRON ; 
 size_t CURL_TELOPT_TTYPE ; 
 size_t CURL_TELOPT_XDISPLOC ; 
 void* CURL_YES ; 
 int FUNC0 (char*) ; 
 struct curl_slist* FUNC1 (struct curl_slist*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,char*,int) ; 

__attribute__((used)) static CURLcode FUNC8(struct connectdata *conn)
{
  struct curl_slist *head;
  struct curl_slist *beg;
  char option_keyword[128] = "";
  char option_arg[256] = "";
  struct Curl_easy *data = conn->data;
  struct TELNET *tn = (struct TELNET *)conn->data->req.protop;
  CURLcode result = CURLE_OK;
  int binary_option;

  /* Add the user name as an environment variable if it
     was given on the command line */
  if(conn->bits.user_passwd) {
    FUNC4(option_arg, sizeof(option_arg), "USER,%s", conn->user);
    beg = FUNC1(tn->telnet_vars, option_arg);
    if(!beg) {
      FUNC2(tn->telnet_vars);
      tn->telnet_vars = NULL;
      return CURLE_OUT_OF_MEMORY;
    }
    tn->telnet_vars = beg;
    tn->us_preferred[CURL_TELOPT_NEW_ENVIRON] = CURL_YES;
  }

  for(head = data->set.telnet_options; head; head = head->next) {
    if(FUNC5(head->data, "%127[^= ]%*[ =]%255s",
              option_keyword, option_arg) == 2) {

      /* Terminal type */
      if(FUNC6(option_keyword, "TTYPE")) {
        FUNC7(tn->subopt_ttype, option_arg, 31);
        tn->subopt_ttype[31] = 0; /* String termination */
        tn->us_preferred[CURL_TELOPT_TTYPE] = CURL_YES;
        continue;
      }

      /* Display variable */
      if(FUNC6(option_keyword, "XDISPLOC")) {
        FUNC7(tn->subopt_xdisploc, option_arg, 127);
        tn->subopt_xdisploc[127] = 0; /* String termination */
        tn->us_preferred[CURL_TELOPT_XDISPLOC] = CURL_YES;
        continue;
      }

      /* Environment variable */
      if(FUNC6(option_keyword, "NEW_ENV")) {
        beg = FUNC1(tn->telnet_vars, option_arg);
        if(!beg) {
          result = CURLE_OUT_OF_MEMORY;
          break;
        }
        tn->telnet_vars = beg;
        tn->us_preferred[CURL_TELOPT_NEW_ENVIRON] = CURL_YES;
        continue;
      }

      /* Window Size */
      if(FUNC6(option_keyword, "WS")) {
        if(FUNC5(option_arg, "%hu%*[xX]%hu",
                  &tn->subopt_wsx, &tn->subopt_wsy) == 2)
          tn->us_preferred[CURL_TELOPT_NAWS] = CURL_YES;
        else {
          FUNC3(data, "Syntax error in telnet option: %s", head->data);
          result = CURLE_TELNET_OPTION_SYNTAX;
          break;
        }
        continue;
      }

      /* To take care or not of the 8th bit in data exchange */
      if(FUNC6(option_keyword, "BINARY")) {
        binary_option = FUNC0(option_arg);
        if(binary_option != 1) {
          tn->us_preferred[CURL_TELOPT_BINARY] = CURL_NO;
          tn->him_preferred[CURL_TELOPT_BINARY] = CURL_NO;
        }
        continue;
      }

      FUNC3(data, "Unknown telnet option %s", head->data);
      result = CURLE_UNKNOWN_OPTION;
      break;
    }
    FUNC3(data, "Syntax error in telnet option: %s", head->data);
    result = CURLE_TELNET_OPTION_SYNTAX;
    break;
  }

  if(result) {
    FUNC2(tn->telnet_vars);
    tn->telnet_vars = NULL;
  }

  return result;
}