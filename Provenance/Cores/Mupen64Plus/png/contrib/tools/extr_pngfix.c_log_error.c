
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* global; } ;
struct TYPE_2__ {scalar_t__ errors; } ;


 int emit_error (struct file*,int,char const*) ;

__attribute__((used)) static void
log_error(struct file *file, int code, const char *what)

{
   if (file->global->errors)
      emit_error(file, code, what);
}
