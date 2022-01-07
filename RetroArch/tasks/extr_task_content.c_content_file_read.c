
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 scalar_t__ file_archive_compressed_read (char const*,void**,int *,int*) ;
 int filestream_read_file (char const*,void**,int*) ;
 scalar_t__ path_contains_compressed_file (char const*) ;

__attribute__((used)) static int64_t content_file_read(const char *path, void **buf, int64_t *length)
{







   return filestream_read_file(path, buf, length);
}
