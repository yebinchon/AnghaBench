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
typedef  int uint32_t ;
typedef  int ssize_t ;
struct TYPE_3__ {void** pages; int file_length; int num_pages; int /*<<< orphan*/  file_descriptor; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TABLE_MAX_PAGES ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,int) ; 

void* FUNC5(Pager* pager, uint32_t page_num) {
  if (page_num > TABLE_MAX_PAGES) {
    FUNC3("Tried to fetch page number out of bounds. %d > %d\n", page_num,
           TABLE_MAX_PAGES);
    FUNC0(EXIT_FAILURE);
  }

  if (pager->pages[page_num] == NULL) {
    // Cache miss. Allocate memory and load from file.
    void* page = FUNC2(PAGE_SIZE);
    uint32_t num_pages = pager->file_length / PAGE_SIZE;

    // We might save a partial page at the end of the file
    if (pager->file_length % PAGE_SIZE) {
      num_pages += 1;
    }

    if (page_num <= num_pages) {
      FUNC1(pager->file_descriptor, page_num * PAGE_SIZE, SEEK_SET);
      ssize_t bytes_read = FUNC4(pager->file_descriptor, page, PAGE_SIZE);
      if (bytes_read == -1) {
        FUNC3("Error reading file: %d\n", errno);
        FUNC0(EXIT_FAILURE);
      }
    }

    pager->pages[page_num] = page;

    if (page_num >= pager->num_pages) {
      pager->num_pages = page_num + 1;
    }
  }

  return pager->pages[page_num];
}