
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* getBindingBuf ) (int,char*,int) ;} ;


 TYPE_1__* DC ;
 int Q_stricmp (char*,char*) ;
 int stub1 (int,char*,int) ;

__attribute__((used)) static void Controls_GetKeyAssignment (char *command, int *twokeys)
{
 int count;
 int j;
 char b[256];

 twokeys[0] = twokeys[1] = -1;
 count = 0;

 for ( j = 0; j < 256; j++ )
 {
  DC->getBindingBuf( j, b, 256 );
  if ( *b == 0 ) {
   continue;
  }
  if ( !Q_stricmp( b, command ) ) {
   twokeys[count] = j;
   count++;
   if (count == 2) {
    break;
   }
  }
 }
}
