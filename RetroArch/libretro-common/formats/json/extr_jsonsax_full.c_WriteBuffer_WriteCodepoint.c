
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* WriteBuffer ;
struct TYPE_8__ {int outputEncoding; } ;
struct TYPE_7__ {int used; int * bytes; } ;
typedef TYPE_2__* JSON_Writer ;
typedef int JSON_Status ;
typedef int Codepoint ;


 scalar_t__ EncodeCodepoint (int ,int ,int *) ;
 int JSON_Failure ;
 int JSON_Success ;
 int LONGEST_ENCODING_SEQUENCE ;
 int WriteBuffer_Flush (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static JSON_Status WriteBuffer_WriteCodepoint(WriteBuffer buffer, JSON_Writer writer, Codepoint c)
{
   if (buffer->used + LONGEST_ENCODING_SEQUENCE > sizeof(buffer->bytes) &&
         !WriteBuffer_Flush(buffer, writer))
      return JSON_Failure;

   buffer->used += EncodeCodepoint(c, writer->outputEncoding, &buffer->bytes[buffer->used]);
   return JSON_Success;
}
