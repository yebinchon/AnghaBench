#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  curl; int /*<<< orphan*/  file; } ;
struct TYPE_7__ {scalar_t__ buffer_pos; TYPE_1__ handle; int /*<<< orphan*/  still_running; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ URL_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CFTYPE_CURL ; 
 int /*<<< orphan*/  CFTYPE_FILE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ multi_handle ; 
 long write_callback ; 

URL_FILE *FUNC10(const char *url, const char *operation)
{
  /* this code could check for URLs or types in the 'url' and
     basically use the real fopen() for standard files */

  URL_FILE *file;
  (void)operation;

  file = FUNC0(1, sizeof(URL_FILE));
  if(!file)
    return NULL;

  file->handle.file = FUNC8(url, operation);
  if(file->handle.file)
    file->type = CFTYPE_FILE; /* marked as URL */

  else {
    file->type = CFTYPE_CURL; /* marked as URL */
    file->handle.curl = FUNC2();

    FUNC3(file->handle.curl, CURLOPT_URL, url);
    FUNC3(file->handle.curl, CURLOPT_WRITEDATA, file);
    FUNC3(file->handle.curl, CURLOPT_VERBOSE, 0L);
    FUNC3(file->handle.curl, CURLOPT_WRITEFUNCTION, write_callback);

    if(!multi_handle)
      multi_handle = FUNC5();

    FUNC4(multi_handle, file->handle.curl);

    /* lets start the fetch */
    FUNC6(multi_handle, &file->still_running);

    if((file->buffer_pos == 0) && (!file->still_running)) {
      /* if still_running is 0 now, we should return NULL */

      /* make sure the easy handle is not in the multi handle anymore */
      FUNC7(multi_handle, file->handle.curl);

      /* cleanup */
      FUNC1(file->handle.curl);

      FUNC9(file);

      file = NULL;
    }
  }
  return file;
}