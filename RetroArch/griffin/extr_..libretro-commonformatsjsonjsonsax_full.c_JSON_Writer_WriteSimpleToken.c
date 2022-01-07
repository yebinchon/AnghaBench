
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int byte ;
struct TYPE_5__ {scalar_t__ error; int outputEncoding; int state; } ;
typedef int Symbol ;
typedef TYPE_1__* JSON_Writer ;
typedef int JSON_Status ;


 int GET_FLAGS (int ,int) ;
 scalar_t__ JSON_Error_None ;
 int JSON_Failure ;
 int JSON_Success ;
 scalar_t__ JSON_Writer_OutputBytes (TYPE_1__*,int const* const,size_t) ;
 scalar_t__ JSON_Writer_ProcessToken (TYPE_1__*,int ) ;
 int SET_FLAGS_OFF (int ,int ,int) ;
 int SET_FLAGS_ON (int ,int ,int) ;
 scalar_t__ SHORTEST_ENCODING_SEQUENCE (int) ;
 int WRITER_IN_PROTECTED_API ;
 int WRITER_STARTED ;
 int WriterState ;

__attribute__((used)) static JSON_Status JSON_Writer_WriteSimpleToken(JSON_Writer writer, Symbol token, const byte* const* encodings, size_t length)
{
   JSON_Status status = JSON_Failure;
   if (writer && !GET_FLAGS(writer->state, WRITER_IN_PROTECTED_API) && writer->error == JSON_Error_None)
   {
      size_t encodedLength = length * (size_t)SHORTEST_ENCODING_SEQUENCE(writer->outputEncoding);
      SET_FLAGS_ON(WriterState, writer->state, WRITER_STARTED | WRITER_IN_PROTECTED_API);
      if (JSON_Writer_ProcessToken(writer, token) &&
            JSON_Writer_OutputBytes(writer, encodings[writer->outputEncoding - 1], encodedLength))
         status = JSON_Success;
      SET_FLAGS_OFF(WriterState, writer->state, WRITER_IN_PROTECTED_API);
   }
   return status;
}
