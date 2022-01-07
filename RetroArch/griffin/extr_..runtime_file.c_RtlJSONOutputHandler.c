
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
typedef TYPE_1__ RtlJSONContext ;
typedef int JSON_Writer_HandlerResult ;
typedef int JSON_Writer ;


 int JSON_Writer_Abort ;
 int JSON_Writer_Continue ;
 scalar_t__ JSON_Writer_GetUserData (int ) ;
 size_t filestream_write (int ,char const*,size_t) ;

__attribute__((used)) static JSON_Writer_HandlerResult RtlJSONOutputHandler(JSON_Writer writer, const char *pBytes, size_t length)
{
   RtlJSONContext *context = (RtlJSONContext*)JSON_Writer_GetUserData(writer);
   (void)writer;

   return filestream_write(context->file, pBytes, length) == length ? JSON_Writer_Continue : JSON_Writer_Abort;
}
