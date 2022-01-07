
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int data_pos; } ;


 int file_getpos (struct file*,int *) ;

__attribute__((used)) static void
getpos(struct file *file)




{
   file_getpos(file, &file->data_pos);
}
