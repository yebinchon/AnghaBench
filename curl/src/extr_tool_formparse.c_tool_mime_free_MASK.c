#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  headers; int /*<<< orphan*/  data; int /*<<< orphan*/  encoder; int /*<<< orphan*/  type; int /*<<< orphan*/  filename; int /*<<< orphan*/  name; struct TYPE_4__* prev; struct TYPE_4__* subparts; } ;
typedef  TYPE_1__ tool_mime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(tool_mime *mime)
{
  if(mime) {
    if(mime->subparts)
      FUNC3(mime->subparts);
    if(mime->prev)
      FUNC3(mime->prev);
    FUNC0(mime->name);
    FUNC0(mime->filename);
    FUNC0(mime->type);
    FUNC0(mime->encoder);
    FUNC0(mime->data);
    FUNC1(mime->headers);
    FUNC2(mime);
  }
}