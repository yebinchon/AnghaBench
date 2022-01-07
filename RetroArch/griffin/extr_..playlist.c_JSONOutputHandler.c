
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
typedef int JSON_Writer_HandlerResult ;
typedef int JSON_Writer ;
typedef TYPE_1__ JSONContext ;


 int JSON_Writer_Abort ;
 int JSON_Writer_Continue ;
 scalar_t__ JSON_Writer_GetUserData (int ) ;
 size_t filestream_write (int ,char const*,size_t) ;

__attribute__((used)) static JSON_Writer_HandlerResult JSONOutputHandler(JSON_Writer writer, const char *pBytes, size_t length)
{
   JSONContext *context = (JSONContext*)JSON_Writer_GetUserData(writer);

   (void)writer;
   return filestream_write(context->file, pBytes, length) == length ? JSON_Writer_Continue : JSON_Writer_Abort;
}
