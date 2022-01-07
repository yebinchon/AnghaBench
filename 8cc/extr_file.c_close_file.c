
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ file; } ;
typedef TYPE_1__ File ;


 int fclose (scalar_t__) ;

__attribute__((used)) static void close_file(File *f) {
    if (f->file)
        fclose(f->file);
}
