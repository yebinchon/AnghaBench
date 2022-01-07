
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ssize_t ;
typedef int off_t ;
struct TYPE_3__ {int ** pages; int file_descriptor; } ;
typedef TYPE_1__ Pager ;


 int EXIT_FAILURE ;
 size_t PAGE_SIZE ;
 int SEEK_SET ;
 int errno ;
 int exit (int ) ;
 int lseek (int ,size_t,int ) ;
 int printf (char*,...) ;
 int write (int ,int *,size_t) ;

void pager_flush(Pager* pager, uint32_t page_num) {
  if (pager->pages[page_num] == ((void*)0)) {
    printf("Tried to flush null page\n");
    exit(EXIT_FAILURE);
  }

  off_t offset = lseek(pager->file_descriptor, page_num * PAGE_SIZE, SEEK_SET);

  if (offset == -1) {
    printf("Error seeking: %d\n", errno);
    exit(EXIT_FAILURE);
  }

  ssize_t bytes_written =
      write(pager->file_descriptor, pager->pages[page_num], PAGE_SIZE);

  if (bytes_written == -1) {
    printf("Error writing: %d\n", errno);
    exit(EXIT_FAILURE);
  }
}
