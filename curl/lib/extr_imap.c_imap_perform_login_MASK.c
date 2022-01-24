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
struct TYPE_2__ {int /*<<< orphan*/  user_passwd; } ;
struct connectdata {int /*<<< orphan*/  passwd; int /*<<< orphan*/  user; TYPE_1__ bits; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  IMAP_LOGIN ; 
 int /*<<< orphan*/  IMAP_STOP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC4(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  char *user;
  char *passwd;

  /* Check we have a username and password to authenticate with and end the
     connect phase if we don't */
  if(!conn->bits.user_passwd) {
    FUNC3(conn, IMAP_STOP);

    return result;
  }

  /* Make sure the username and password are in the correct atom format */
  user = FUNC1(conn->user, false);
  passwd = FUNC1(conn->passwd, false);

  /* Send the LOGIN command */
  result = FUNC2(conn, "LOGIN %s %s", user ? user : "",
                      passwd ? passwd : "");

  FUNC0(user);
  FUNC0(passwd);

  if(!result)
    FUNC3(conn, IMAP_LOGIN);

  return result;
}