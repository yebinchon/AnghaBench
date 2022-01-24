#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct connectdata {struct Curl_easy* data; int /*<<< orphan*/ * sock; } ;
struct Curl_easy {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 unsigned char CURL_IAC ; 
 size_t FIRSTSOCKET ; 
 int SOCKERRNO ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,char*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static void FUNC3(struct connectdata *conn, int cmd, int option)
{
   unsigned char buf[3];
   ssize_t bytes_written;
   struct Curl_easy *data = conn->data;

   buf[0] = CURL_IAC;
   buf[1] = (unsigned char)cmd;
   buf[2] = (unsigned char)option;

   bytes_written = FUNC2(conn->sock[FIRSTSOCKET], buf, 3);
   if(bytes_written < 0) {
     int err = SOCKERRNO;
     FUNC0(data,"Sending data failed (%d)",err);
   }

   FUNC1(conn->data, "SENT", cmd, option);
}