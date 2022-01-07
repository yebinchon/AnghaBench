
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; int flags; } ;
typedef int JSON_Status ;
typedef TYPE_1__* JSON_Parser ;


 scalar_t__ GET_FLAGS (int ,int ) ;
 int JSON_Failure ;
 int JSON_Parser_PushMemberNameList (TYPE_1__*) ;
 int JSON_Success ;
 int PARSER_TRACK_OBJECT_MEMBERS ;

__attribute__((used)) static JSON_Status JSON_Parser_StartContainer(JSON_Parser parser, int isObject)
{
   if (isObject && GET_FLAGS(parser->flags, PARSER_TRACK_OBJECT_MEMBERS) &&
         !JSON_Parser_PushMemberNameList(parser))
   {
      return JSON_Failure;
   }
   parser->depth++;
   return JSON_Success;
}
