
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int column; int line; int name; } ;
typedef TYPE_1__ File ;


 int files ;
 char* format (char*,int ,int ,int ) ;
 scalar_t__ vec_len (int ) ;
 TYPE_1__* vec_tail (int ) ;

char *input_position() {
    if (vec_len(files) == 0)
        return "(unknown)";
    File *f = vec_tail(files);
    return format("%s:%d:%d", f->name, f->line, f->column);
}
