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
struct SingleRequest {char* p; char* httpcode; } ;
struct Curl_easy {struct SingleRequest req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*,char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct Curl_easy *data)
{
  struct SingleRequest *k = &data->req;
  char *beg = k->p;

  /* make sure that data->req.p points to the HTTP status line */
  if(!FUNC2(beg, "HTTP", 4)) {

    /* skip to HTTP status code */
    beg = FUNC1(beg, ' ');
    if(beg && *++beg) {

      /* find trailing CR */
      char end_char = '\r';
      char *end = FUNC1(beg, end_char);
      if(!end) {
        /* try to find LF (workaround for non-compliant HTTP servers) */
        end_char = '\n';
        end = FUNC1(beg, end_char);
      }

      if(end) {
        /* temporarily replace CR or LF by NUL and print the error message */
        *end = '\0';
        FUNC0(data, "The requested URL returned error: %s", beg);

        /* restore the previously replaced CR or LF */
        *end = end_char;
        return;
      }
    }
  }

  /* fall-back to printing the HTTP status code only */
  FUNC0(data, "The requested URL returned error: %d", k->httpcode);
}