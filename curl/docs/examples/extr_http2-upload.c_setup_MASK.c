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
struct stat {long st_size; } ;
struct input {int num; void* in; int /*<<< orphan*/ * hnd; } ;
typedef  long curl_off_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_DEBUGDATA ; 
 int /*<<< orphan*/  CURLOPT_DEBUGFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_HTTP_VERSION ; 
 int /*<<< orphan*/  CURLOPT_INFILESIZE_LARGE ; 
 int /*<<< orphan*/  CURLOPT_PIPEWAIT ; 
 int /*<<< orphan*/  CURLOPT_READDATA ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_UPLOAD ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 long CURL_HTTP_VERSION_2_0 ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 void* FUNC2 (char const*,char*) ; 
 long my_trace ; 
 long read_callback ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct stat*) ; 

__attribute__((used)) static void FUNC5(struct input *i, int num, const char *upload)
{
  FILE *out;
  char url[256];
  char filename[128];
  struct stat file_info;
  curl_off_t uploadsize;
  CURL *hnd;

  hnd = i->hnd = FUNC0();
  i->num = num;
  FUNC3(filename, 128, "dl-%d", num);
  out = FUNC2(filename, "wb");

  FUNC3(url, 256, "https://localhost:8443/upload-%d", num);

  /* get the file size of the local file */
  FUNC4(upload, &file_info);
  uploadsize = file_info.st_size;

  i->in = FUNC2(upload, "rb");

  /* write to this file */
  FUNC1(hnd, CURLOPT_WRITEDATA, out);

  /* we want to use our own read function */
  FUNC1(hnd, CURLOPT_READFUNCTION, read_callback);
  /* read from this file */
  FUNC1(hnd, CURLOPT_READDATA, i);
  /* provide the size of the upload */
  FUNC1(hnd, CURLOPT_INFILESIZE_LARGE, uploadsize);

  /* send in the URL to store the upload as */
  FUNC1(hnd, CURLOPT_URL, url);

  /* upload please */
  FUNC1(hnd, CURLOPT_UPLOAD, 1L);

  /* please be verbose */
  FUNC1(hnd, CURLOPT_VERBOSE, 1L);
  FUNC1(hnd, CURLOPT_DEBUGFUNCTION, my_trace);
  FUNC1(hnd, CURLOPT_DEBUGDATA, i);

  /* HTTP/2 please */
  FUNC1(hnd, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2_0);

  /* we use a self-signed test server, skip verification during debugging */
  FUNC1(hnd, CURLOPT_SSL_VERIFYPEER, 0L);
  FUNC1(hnd, CURLOPT_SSL_VERIFYHOST, 0L);

#if (CURLPIPE_MULTIPLEX > 0)
  /* wait for pipe connection to confirm */
  curl_easy_setopt(hnd, CURLOPT_PIPEWAIT, 1L);
#endif
}