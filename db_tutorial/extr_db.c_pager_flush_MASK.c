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
typedef  size_t uint32_t ;
typedef  int ssize_t ;
typedef  int off_t ;
struct TYPE_3__ {int /*<<< orphan*/ ** pages; int /*<<< orphan*/  file_descriptor; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

void FUNC4(Pager* pager, uint32_t page_num) {
  if (pager->pages[page_num] == NULL) {
    FUNC2("Tried to flush null page\n");
    FUNC0(EXIT_FAILURE);
  }

  off_t offset = FUNC1(pager->file_descriptor, page_num * PAGE_SIZE, SEEK_SET);

  if (offset == -1) {
    FUNC2("Error seeking: %d\n", errno);
    FUNC0(EXIT_FAILURE);
  }

  ssize_t bytes_written =
      FUNC3(pager->file_descriptor, pager->pages[page_num], PAGE_SIZE);

  if (bytes_written == -1) {
    FUNC2("Error writing: %d\n", errno);
    FUNC0(EXIT_FAILURE);
  }
}