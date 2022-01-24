#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  curl; int /*<<< orphan*/  file; } ;
struct TYPE_6__ {int type; struct TYPE_6__* buffer; TYPE_1__ handle; } ;
typedef  TYPE_2__ URL_FILE ;

/* Variables and functions */
#define  CFTYPE_CURL 129 
#define  CFTYPE_FILE 128 
 int /*<<< orphan*/  EBADF ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  multi_handle ; 

int FUNC4(URL_FILE *file)
{
  int ret = 0;/* default is good return */

  switch(file->type) {
  case CFTYPE_FILE:
    ret = FUNC2(file->handle.file); /* passthrough */
    break;

  case CFTYPE_CURL:
    /* make sure the easy handle is not in the multi handle anymore */
    FUNC1(multi_handle, file->handle.curl);

    /* cleanup */
    FUNC0(file->handle.curl);
    break;

  default: /* unknown or supported type - oh dear */
    ret = EOF;
    errno = EBADF;
    break;
  }

  FUNC3(file->buffer);/* free any allocated buffer space */
  FUNC3(file);

  return ret;
}