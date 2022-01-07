
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* WriteBuffer ;
struct TYPE_3__ {scalar_t__ used; int bytes; } ;
typedef int JSON_Writer ;
typedef int JSON_Status ;


 int JSON_Writer_OutputBytes (int ,int ,scalar_t__) ;

__attribute__((used)) static JSON_Status WriteBuffer_Flush(WriteBuffer buffer, JSON_Writer writer)
{
   JSON_Status status = JSON_Writer_OutputBytes(writer, buffer->bytes, buffer->used);
   buffer->used = 0;
   return status;
}
