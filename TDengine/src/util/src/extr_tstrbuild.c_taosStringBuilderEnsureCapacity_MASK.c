#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t size; char* buf; int /*<<< orphan*/  jb; scalar_t__ pos; } ;
typedef  TYPE_1__ SStringBuilder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (char*,size_t) ; 

void FUNC2(SStringBuilder* sb, size_t size) {
  size += sb->pos;
  if (size > sb->size) {
    size *= 2;
    void* tmp = FUNC1(sb->buf, size);
    if (tmp == NULL) {
      FUNC0(sb->jb, 1);
    }
    sb->buf = (char*)tmp;
    sb->size = size;
  }
}