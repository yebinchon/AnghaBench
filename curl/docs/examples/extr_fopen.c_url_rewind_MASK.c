#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  curl; int /*<<< orphan*/  file; } ;
struct TYPE_5__ {int type; int /*<<< orphan*/  buffer_len; int /*<<< orphan*/  buffer_pos; int /*<<< orphan*/ * buffer; TYPE_1__ handle; } ;
typedef  TYPE_2__ URL_FILE ;

/* Variables and functions */
#define  CFTYPE_CURL 129 
#define  CFTYPE_FILE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  multi_handle ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(URL_FILE *file)
{
  switch(file->type) {
  case CFTYPE_FILE:
    FUNC3(file->handle.file); /* passthrough */
    break;

  case CFTYPE_CURL:
    /* halt transaction */
    FUNC1(multi_handle, file->handle.curl);

    /* restart */
    FUNC0(multi_handle, file->handle.curl);

    /* ditch buffer - write will recreate - resets stream pos*/
    FUNC2(file->buffer);
    file->buffer = NULL;
    file->buffer_pos = 0;
    file->buffer_len = 0;

    break;

  default: /* unknown or supported type - oh dear */
    break;
  }
}