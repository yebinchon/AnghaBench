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
typedef  scalar_t__ curl_off_t ;
struct TYPE_6__ {scalar_t__ kind; scalar_t__ datasize; int flags; int /*<<< orphan*/  userheaders; int /*<<< orphan*/  curlheaders; TYPE_1__* encoder; int /*<<< orphan*/  arg; } ;
typedef  TYPE_2__ curl_mimepart ;
struct TYPE_5__ {scalar_t__ (* sizefunc ) (TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ MIMEKIND_MULTIPART ; 
 int MIME_BODY_ONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

curl_off_t FUNC3(curl_mimepart *part)
{
  curl_off_t size;

  if(part->kind == MIMEKIND_MULTIPART)
    part->datasize = FUNC0(part->arg);

  size = part->datasize;

  if(part->encoder)
    size = part->encoder->sizefunc(part);

  if(size >= 0 && !(part->flags & MIME_BODY_ONLY)) {
    /* Compute total part size. */
    size += FUNC1(part->curlheaders, 2, NULL);
    size += FUNC1(part->userheaders, 2, "Content-Type");
    size += 2;    /* CRLF after headers. */
  }
  return size;
}