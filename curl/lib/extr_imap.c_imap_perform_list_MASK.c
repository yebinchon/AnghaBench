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
struct connectdata {struct Curl_easy* data; } ;
struct IMAP {char* custom_params; scalar_t__ mailbox; scalar_t__ custom; } ;
struct TYPE_2__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  IMAP_LIST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static CURLcode FUNC5(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;

  if(imap->custom)
    /* Send the custom request */
    result = FUNC2(conn, "%s%s", imap->custom,
                        imap->custom_params ? imap->custom_params : "");
  else {
    /* Make sure the mailbox is in the correct atom format if necessary */
    char *mailbox = imap->mailbox ? FUNC1(imap->mailbox, true)
                                  : FUNC4("");
    if(!mailbox)
      return CURLE_OUT_OF_MEMORY;

    /* Send the LIST command */
    result = FUNC2(conn, "LIST \"%s\" *", mailbox);

    FUNC0(mailbox);
  }

  if(!result)
    FUNC3(conn, IMAP_LIST);

  return result;
}