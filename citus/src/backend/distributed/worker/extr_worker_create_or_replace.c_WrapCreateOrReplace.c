
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; int member_0; } ;
typedef TYPE_1__ StringInfoData ;


 int CREATE_OR_REPLACE_COMMAND ;
 int appendStringInfo (TYPE_1__*,int ,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int quote_literal_cstr (char const*) ;

char *
WrapCreateOrReplace(const char *sql)
{
 StringInfoData buf = { 0 };
 initStringInfo(&buf);
 appendStringInfo(&buf, CREATE_OR_REPLACE_COMMAND, quote_literal_cstr(sql));
 return buf.data;
}
