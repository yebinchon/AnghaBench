
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Token ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ File ;


 int errort (int *,char*,char*) ;
 int expect_newline () ;
 int format (char*,char*,char*) ;
 char* fullpath (int ) ;
 char* read_cpp_header_name (int *,int*) ;
 int std_include_path ;
 int strcmp (char*,char*) ;
 scalar_t__ try_include (char*,char*,int) ;
 char* vec_get (int ,int) ;
 int vec_len (int ) ;

__attribute__((used)) static void read_include_next(Token *hash, File *file) {




    bool std;
    char *filename = read_cpp_header_name(hash, &std);
    expect_newline();
    if (filename[0] == '/') {
        if (try_include("/", filename, 0))
            return;
        goto err;
    }
    char *cur = fullpath(file->name);
    int i = 0;
    for (; i < vec_len(std_include_path); i++) {
        char *dir = vec_get(std_include_path, i);
        if (!strcmp(cur, fullpath(format("%s/%s", dir, filename))))
            break;
    }
    for (i++; i < vec_len(std_include_path); i++)
        if (try_include(vec_get(std_include_path, i), filename, 0))
            return;
  err:
    errort(hash, "cannot find header file: %s", filename);
}
