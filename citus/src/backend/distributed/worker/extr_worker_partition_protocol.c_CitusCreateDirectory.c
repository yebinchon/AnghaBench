
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__* StringInfo ;


 int ERROR ;
 int S_IRWXU ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 int mkdir (int ,int ) ;

void
CitusCreateDirectory(StringInfo directoryName)
{
 int makeOK = mkdir(directoryName->data, S_IRWXU);
 if (makeOK != 0)
 {
  ereport(ERROR, (errcode_for_file_access(),
      errmsg("could not create directory \"%s\": %m",
          directoryName->data)));
 }
}
