
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct control {int file; } ;


 int file_end (int *) ;

__attribute__((used)) static int
control_end(struct control *control)
{
   return file_end(&control->file);
}
