
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__* StringInfo ;


 int ERROR ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ,int ) ;
 int rename (int ,int ) ;

__attribute__((used)) static void
RenameDirectory(StringInfo oldDirectoryName, StringInfo newDirectoryName)
{
 int renamed = rename(oldDirectoryName->data, newDirectoryName->data);
 if (renamed != 0)
 {
  ereport(ERROR, (errcode_for_file_access(),
      errmsg("could not rename directory \"%s\" to \"%s\": %m",
          oldDirectoryName->data, newDirectoryName->data)));
 }
}
