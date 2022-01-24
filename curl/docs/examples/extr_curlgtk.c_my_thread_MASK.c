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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 long Bar ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_PROGRESSDATA ; 
 int /*<<< orphan*/  CURLOPT_PROGRESSFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_READFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 long my_progress_func ; 
 long my_read_func ; 
 long my_write_func ; 

void *FUNC6(void *ptr)
{
  CURL *curl;

  curl = FUNC1();
  if(curl) {
    gchar *url = ptr;
    const char *filename = "test.curl";
    FILE *outfile = FUNC5(filename, "wb");

    FUNC3(curl, CURLOPT_URL, url);
    FUNC3(curl, CURLOPT_WRITEDATA, outfile);
    FUNC3(curl, CURLOPT_WRITEFUNCTION, my_write_func);
    FUNC3(curl, CURLOPT_READFUNCTION, my_read_func);
    FUNC3(curl, CURLOPT_NOPROGRESS, 0L);
    FUNC3(curl, CURLOPT_PROGRESSFUNCTION, my_progress_func);
    FUNC3(curl, CURLOPT_PROGRESSDATA, Bar);

    FUNC2(curl);

    FUNC4(outfile);
    /* always cleanup */
    FUNC0(curl);
  }

  return NULL;
}