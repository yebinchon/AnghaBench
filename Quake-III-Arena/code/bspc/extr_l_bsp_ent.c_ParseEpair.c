
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int string; } ;
typedef TYPE_1__ token_t ;
typedef int script_t ;
struct TYPE_8__ {void* value; void* key; } ;
typedef TYPE_2__ epair_t ;


 int Error (char*,int ) ;
 TYPE_2__* GetMemory (int) ;
 int MAX_KEY ;
 int MAX_VALUE ;
 int PS_ExpectAnyToken (int *,TYPE_1__*) ;
 int StripDoubleQuotes (int ) ;
 int StripTrailing (void*) ;
 void* copystring (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int strlen (int ) ;

epair_t *ParseEpair(script_t *script)
{
 epair_t *e;
 token_t token;

 e = GetMemory(sizeof(epair_t));
 memset (e, 0, sizeof(epair_t));

 PS_ExpectAnyToken(script, &token);
 StripDoubleQuotes(token.string);
 if (strlen(token.string) >= MAX_KEY-1)
  Error ("ParseEpair: token %s too long", token.string);
 e->key = copystring(token.string);
 PS_ExpectAnyToken(script, &token);
 StripDoubleQuotes(token.string);
 if (strlen(token.string) >= MAX_VALUE-1)
  Error ("ParseEpair: token %s too long", token.string);
 e->value = copystring(token.string);


 StripTrailing(e->key);
 StripTrailing(e->value);

 return e;
}
