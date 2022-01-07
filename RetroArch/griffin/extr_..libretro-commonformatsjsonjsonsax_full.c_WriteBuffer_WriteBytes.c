
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
typedef TYPE_1__* WriteBuffer ;
struct TYPE_4__ {size_t used; int * bytes; } ;
typedef int JSON_Writer ;
typedef int JSON_Status ;


 int JSON_Failure ;
 int JSON_Success ;
 int WriteBuffer_Flush (TYPE_1__*,int ) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static JSON_Status WriteBuffer_WriteBytes(WriteBuffer buffer, JSON_Writer writer, const byte* pBytes, size_t length)
{
   if (buffer->used + length > sizeof(buffer->bytes) &&
         !WriteBuffer_Flush(buffer, writer))
      return JSON_Failure;

   memcpy(&buffer->bytes[buffer->used], pBytes, length);
   buffer->used += length;
   return JSON_Success;
}
