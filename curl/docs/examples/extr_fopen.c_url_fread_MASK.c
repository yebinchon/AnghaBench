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
struct TYPE_6__ {int /*<<< orphan*/  file; } ;
struct TYPE_7__ {int type; size_t buffer_pos; int /*<<< orphan*/  buffer; TYPE_1__ handle; } ;
typedef  TYPE_2__ URL_FILE ;

/* Variables and functions */
#define  CFTYPE_CURL 129 
#define  CFTYPE_FILE 128 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 size_t FUNC1 (void*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t) ; 

size_t FUNC4(void *ptr, size_t size, size_t nmemb, URL_FILE *file)
{
  size_t want;

  switch(file->type) {
  case CFTYPE_FILE:
    want = FUNC1(ptr, size, nmemb, file->handle.file);
    break;

  case CFTYPE_CURL:
    want = nmemb * size;

    FUNC0(file, want);

    /* check if there's data in the buffer - if not fill_buffer()
     * either errored or EOF */
    if(!file->buffer_pos)
      return 0;

    /* ensure only available data is considered */
    if(file->buffer_pos < want)
      want = file->buffer_pos;

    /* xfer data to caller */
    FUNC2(ptr, file->buffer, want);

    FUNC3(file, want);

    want = want / size;     /* number of items */
    break;

  default: /* unknown or supported type - oh dear */
    want = 0;
    errno = EBADF;
    break;

  }
  return want;
}