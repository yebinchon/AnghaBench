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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  tag ;
typedef  int /*<<< orphan*/  attr ;
typedef  int /*<<< orphan*/  HTMLSTREAMPARSER ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_FOLLOWLOCATION ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 long write_callback ; 

int FUNC12(int argc, char *argv[])
{
  char tag[1], attr[4], val[128];
  CURL *curl;
  HTMLSTREAMPARSER *hsp;

  if(argc != 2) {
    FUNC11("Usage: %s URL\n", argv[0]);
    return EXIT_FAILURE;
  }

  curl = FUNC1();

  hsp = FUNC5();

  FUNC9(hsp, 1);
  FUNC7(hsp, 1);
  FUNC8(hsp, tag, sizeof(tag));
  FUNC6(hsp, attr, sizeof(attr));
  FUNC10(hsp, val, sizeof(val)-1);

  FUNC3(curl, CURLOPT_URL, argv[1]);
  FUNC3(curl, CURLOPT_WRITEFUNCTION, write_callback);
  FUNC3(curl, CURLOPT_WRITEDATA, hsp);
  FUNC3(curl, CURLOPT_FOLLOWLOCATION, 1L);

  FUNC2(curl);

  FUNC0(curl);

  FUNC4(hsp);

  return EXIT_SUCCESS;
}