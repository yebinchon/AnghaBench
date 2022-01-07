
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 int unlink (char const*) ;

__attribute__((used)) static void
CitusDeleteFile(const char *filename)
{
 int deleted = unlink(filename);
 if (deleted != 0)
 {
  ereport(WARNING, (errcode_for_file_access(),
        errmsg("could not delete file \"%s\": %m", filename)));
 }
}
