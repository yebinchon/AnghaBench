
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int memorySuite; int grammarianData; } ;
typedef int Symbol ;
typedef TYPE_1__* JSON_Writer ;
typedef int JSON_Status ;
typedef int GrammarianOutput ;


 int GRAMMARIAN_RESULT_CODE (int ) ;
 int Grammarian_ProcessToken (int *,int ,int *) ;
 int JSON_Error_OutOfMemory ;
 int JSON_Error_UnexpectedToken ;
 int JSON_Failure ;
 int JSON_Success ;
 int JSON_Writer_SetError (TYPE_1__*,int ) ;



__attribute__((used)) static JSON_Status JSON_Writer_ProcessToken(JSON_Writer writer, Symbol token)
{
   GrammarianOutput output = Grammarian_ProcessToken(&writer->grammarianData, token, &writer->memorySuite);
   switch (GRAMMARIAN_RESULT_CODE(output))
   {
      case 129:
         JSON_Writer_SetError(writer, JSON_Error_UnexpectedToken);
         return JSON_Failure;

      case 128:
         JSON_Writer_SetError(writer, JSON_Error_OutOfMemory);
         return JSON_Failure;
   }
   return JSON_Success;
}
