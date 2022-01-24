#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int /*<<< orphan*/  easy; int /*<<< orphan*/  filename; int /*<<< orphan*/  name; int /*<<< orphan*/  mimetype; int /*<<< orphan*/  userheaders; int /*<<< orphan*/  curlheaders; } ;
typedef  TYPE_1__ curl_mimepart ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MIME_USERHEADERS_OWNER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(curl_mimepart *part)
{
  FUNC2(part);
  FUNC3(part->curlheaders);
  if(part->flags & MIME_USERHEADERS_OWNER)
    FUNC3(part->userheaders);
  FUNC1(part->mimetype);
  FUNC1(part->name);
  FUNC1(part->filename);
  FUNC0(part, part->easy);
}