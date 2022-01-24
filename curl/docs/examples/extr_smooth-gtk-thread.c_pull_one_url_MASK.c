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
typedef  char gchar ;
typedef  char FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int j ; 
 int /*<<< orphan*/  lock ; 
 int num_urls ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/ * urls ; 
 char* write_file ; 

void *FUNC12(void *NaN)
{
  /* Stop threads from entering unless j is incremented */
  FUNC9(&lock);
  while(j < num_urls) {
    CURL *curl;
    gchar *http;

    FUNC8("j = %d\n", j);

    http =
      FUNC7("xoap.weather.com/weather/local/%s?cc=*&dayf=5&unit=i\n",
                      urls[j]);

    FUNC8("http %s", http);

    curl = FUNC1();
    if(curl) {

      FILE *outfile = FUNC5(urls[j], "wb");

      /* Set the URL and transfer type */
      FUNC3(curl, CURLOPT_URL, http);

      /* Write to the file */
      FUNC3(curl, CURLOPT_WRITEDATA, outfile);
      FUNC3(curl, CURLOPT_WRITEFUNCTION, write_file);

      j++;  /* critical line */
      FUNC10(&lock);

      FUNC2(curl);

      FUNC4(outfile);
      FUNC8("fclose\n");

      FUNC0(curl);
    }
    FUNC6(http);

    /* Adds more latency, testing the mutex.*/
    FUNC11(1);

  } /* end while */
  return NULL;
}