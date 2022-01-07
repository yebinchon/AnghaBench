
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int text ;
typedef int int32 ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__* StringInfo ;


 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int * cstring_to_text (int ) ;
 TYPE_1__* makeStringInfo () ;

text *
IntegerToText(int32 value)
{
 text *valueText = ((void*)0);
 StringInfo valueString = makeStringInfo();
 appendStringInfo(valueString, "%d", value);

 valueText = cstring_to_text(valueString->data);

 return valueText;
}
