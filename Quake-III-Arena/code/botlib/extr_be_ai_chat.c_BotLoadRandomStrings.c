
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; char* string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;
struct TYPE_8__ {char* string; struct TYPE_8__* next; } ;
typedef TYPE_2__ bot_randomstring_t ;
struct TYPE_9__ {char* string; TYPE_2__* firstrandomstring; scalar_t__ numstrings; struct TYPE_9__* next; } ;
typedef TYPE_3__ bot_randomlist_t ;
struct TYPE_10__ {int (* Print ) (int ,char*,int) ;} ;


 int BOTFILESBASEFOLDER ;
 int BotLoadChatMessage (int *,char*) ;
 int FreeSource (int *) ;
 scalar_t__ GetClearedHunkMemory (int) ;
 int * LoadSourceFile (char*) ;
 int MAX_MESSAGE_SIZE ;
 int PC_CheckTokenString (int *,char*) ;
 int PC_ExpectTokenString (int *,char*) ;
 scalar_t__ PC_ReadToken (int *,TYPE_1__*) ;
 int PC_SetBaseFolder (int ) ;
 int PRT_ERROR ;
 int PRT_MESSAGE ;
 int SourceError (int *,char*,char*) ;
 int Sys_MilliSeconds () ;
 scalar_t__ TT_NAME ;
 TYPE_4__ botimport ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int stub1 (int ,char*,char*) ;
 int stub2 (int ,char*,char*) ;
 int stub3 (int ,char*,int) ;

bot_randomlist_t *BotLoadRandomStrings(char *filename)
{
 int pass, size;
 char *ptr = ((void*)0), chatmessagestring[MAX_MESSAGE_SIZE];
 source_t *source;
 token_t token;
 bot_randomlist_t *randomlist, *lastrandom, *random;
 bot_randomstring_t *randomstring;





 size = 0;
 randomlist = ((void*)0);
 random = ((void*)0);

 for (pass = 0; pass < 2; pass++)
 {

  if (pass && size) ptr = (char *) GetClearedHunkMemory(size);

  PC_SetBaseFolder(BOTFILESBASEFOLDER);
  source = LoadSourceFile(filename);
  if (!source)
  {
   botimport.Print(PRT_ERROR, "counldn't load %s\n", filename);
   return ((void*)0);
  }

  randomlist = ((void*)0);
  lastrandom = ((void*)0);

  while(PC_ReadToken(source, &token))
  {
   if (token.type != TT_NAME)
   {
    SourceError(source, "unknown random %s", token.string);
    FreeSource(source);
    return ((void*)0);
   }
   size += sizeof(bot_randomlist_t) + strlen(token.string) + 1;
   if (pass)
   {
    random = (bot_randomlist_t *) ptr;
    ptr += sizeof(bot_randomlist_t);
    random->string = ptr;
    ptr += strlen(token.string) + 1;
    strcpy(random->string, token.string);
    random->firstrandomstring = ((void*)0);
    random->numstrings = 0;

    if (lastrandom) lastrandom->next = random;
    else randomlist = random;
    lastrandom = random;
   }
   if (!PC_ExpectTokenString(source, "=") ||
    !PC_ExpectTokenString(source, "{"))
   {
    FreeSource(source);
    return ((void*)0);
   }
   while(!PC_CheckTokenString(source, "}"))
   {
    if (!BotLoadChatMessage(source, chatmessagestring))
    {
     FreeSource(source);
     return ((void*)0);
    }
    size += sizeof(bot_randomstring_t) + strlen(chatmessagestring) + 1;
    if (pass)
    {
     randomstring = (bot_randomstring_t *) ptr;
     ptr += sizeof(bot_randomstring_t);
     randomstring->string = ptr;
     ptr += strlen(chatmessagestring) + 1;
     strcpy(randomstring->string, chatmessagestring);

     random->numstrings++;
     randomstring->next = random->firstrandomstring;
     random->firstrandomstring = randomstring;
    }
   }
  }

  FreeSource(source);
 }
 botimport.Print(PRT_MESSAGE, "loaded %s\n", filename);






 return randomlist;
}
