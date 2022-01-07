
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Token ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ File ;


 char* dirname (int ) ;
 int errort (int *,char*,char*) ;
 int expect_newline () ;
 char* read_cpp_header_name (int *,int*) ;
 int std_include_path ;
 int strdup (scalar_t__) ;
 scalar_t__ try_include (char*,char*,int) ;
 char* vec_get (int ,int) ;
 int vec_len (int ) ;

__attribute__((used)) static void read_include(Token *hash, File *file, bool isimport) {
    bool std;
    char *filename = read_cpp_header_name(hash, &std);
    expect_newline();
    if (filename[0] == '/') {
        if (try_include("/", filename, isimport))
            return;
        goto err;
    }
    if (!std) {
        char *dir = file->name ? dirname(strdup(file->name)) : ".";
        if (try_include(dir, filename, isimport))
            return;
    }
    for (int i = 0; i < vec_len(std_include_path); i++)
        if (try_include(vec_get(std_include_path, i), filename, isimport))
            return;
  err:
    errort(hash, "cannot find header file: %s", filename);
}
