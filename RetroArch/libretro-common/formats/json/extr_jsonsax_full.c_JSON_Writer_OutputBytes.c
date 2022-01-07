
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int byte ;
struct TYPE_5__ {scalar_t__ (* outputHandler ) (TYPE_1__*,char const*,size_t) ;} ;
typedef TYPE_1__* JSON_Writer ;
typedef int JSON_Status ;


 int JSON_Error_AbortedByHandler ;
 int JSON_Failure ;
 int JSON_Success ;
 scalar_t__ JSON_Writer_Continue ;
 int JSON_Writer_SetError (TYPE_1__*,int ) ;
 scalar_t__ stub1 (TYPE_1__*,char const*,size_t) ;

__attribute__((used)) static JSON_Status JSON_Writer_OutputBytes(JSON_Writer writer, const byte* pBytes, size_t length)
{
   if (writer->outputHandler && length)
   {
      if (writer->outputHandler(writer, (const char*)pBytes, length) != JSON_Writer_Continue)
      {
         JSON_Writer_SetError(writer, JSON_Error_AbortedByHandler);
         return JSON_Failure;
      }
   }
   return JSON_Success;
}
