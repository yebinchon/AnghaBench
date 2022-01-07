
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAST_COMMAND_NONE ;
 int LastCommand ;
 int* buf ;
 size_t compiledOfs ;

__attribute__((used)) static void Emit1( int v )
{
 buf[ compiledOfs ] = v;
 compiledOfs++;

 LastCommand = LAST_COMMAND_NONE;
}
