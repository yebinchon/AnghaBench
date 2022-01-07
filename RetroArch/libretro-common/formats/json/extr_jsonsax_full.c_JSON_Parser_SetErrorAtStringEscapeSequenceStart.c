
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ byte ;
struct TYPE_3__ {scalar_t__ errorOffset; int error; } ;
typedef TYPE_1__* JSON_Parser ;
typedef int Error ;



__attribute__((used)) static void JSON_Parser_SetErrorAtStringEscapeSequenceStart(
      JSON_Parser parser, Error error, int codepointsAgo)
{
   parser->error = error;
   parser->errorOffset = (byte)codepointsAgo;
}
