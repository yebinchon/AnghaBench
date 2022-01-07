
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int * outputHandler; int grammarianData; int error; int outputEncoding; int flags; int * userData; } ;
typedef TYPE_1__* JSON_Writer ;


 int Grammarian_Reset (int *,int) ;
 int JSON_Error_None ;
 int JSON_UTF8 ;
 int WRITER_DEFAULT_FLAGS ;
 int WRITER_RESET ;

__attribute__((used)) static void JSON_Writer_ResetData(JSON_Writer writer, int isInitialized)
{
   writer->userData = ((void*)0);
   writer->flags = WRITER_DEFAULT_FLAGS;
   writer->outputEncoding = JSON_UTF8;
   writer->error = JSON_Error_None;
   Grammarian_Reset(&writer->grammarianData, isInitialized);
   writer->outputHandler = ((void*)0);
   writer->state = WRITER_RESET;
}
