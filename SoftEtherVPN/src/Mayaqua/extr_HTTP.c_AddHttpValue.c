
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ValueList; } ;
typedef int HTTP_VALUE ;
typedef TYPE_1__ HTTP_HEADER ;


 int FreeHttpValue (int *) ;
 scalar_t__ HTTP_HEADER_MAX_LINES ;
 int Insert (int ,int *) ;
 scalar_t__ LIST_NUM (int ) ;

void AddHttpValue(HTTP_HEADER *header, HTTP_VALUE *value)
{

 if (header == ((void*)0) || value == ((void*)0))
 {
  return;
 }

 if (LIST_NUM(header->ValueList) < HTTP_HEADER_MAX_LINES)
 {
  Insert(header->ValueList, value);
 }
 else
 {
  FreeHttpValue(value);
 }
}
