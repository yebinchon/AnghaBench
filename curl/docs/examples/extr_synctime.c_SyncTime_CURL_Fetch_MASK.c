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
typedef  char FILE ;
typedef  int CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_NOBODY ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int HTTP_COMMAND_HEAD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 

int FUNC4(CURL *curl, char *URL_Str, char *OutFileName,
                        int HttpGetBody)
{
  FILE *outfile;
  CURLcode res;

  outfile = NULL;
  if(HttpGetBody == HTTP_COMMAND_HEAD)
    FUNC1(curl, CURLOPT_NOBODY, 1L);
  else {
    outfile = FUNC3(OutFileName, "wb");
    FUNC1(curl, CURLOPT_WRITEDATA, outfile);
  }

  FUNC1(curl, CURLOPT_URL, URL_Str);
  res = FUNC0(curl);
  if(outfile != NULL)
    FUNC2(outfile);
  return res;  /* (CURLE_OK) */
}