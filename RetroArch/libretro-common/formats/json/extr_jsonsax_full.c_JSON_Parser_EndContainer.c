
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int depth; } ;
typedef TYPE_1__* JSON_Parser ;


 scalar_t__ GET_FLAGS (int ,int ) ;
 int JSON_Parser_PopMemberNameList (TYPE_1__*) ;
 int PARSER_TRACK_OBJECT_MEMBERS ;

__attribute__((used)) static void JSON_Parser_EndContainer(JSON_Parser parser, int isObject)
{
   parser->depth--;
   if (isObject && GET_FLAGS(parser->flags, PARSER_TRACK_OBJECT_MEMBERS))
   {
      JSON_Parser_PopMemberNameList(parser);
   }
}
