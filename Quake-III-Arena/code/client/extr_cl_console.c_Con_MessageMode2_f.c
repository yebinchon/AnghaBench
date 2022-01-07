
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int widthInChars; } ;
struct TYPE_4__ {int keyCatchers; } ;


 int Field_Clear (TYPE_2__*) ;
 int KEYCATCH_MESSAGE ;
 TYPE_2__ chatField ;
 int chat_playerNum ;
 int chat_team ;
 TYPE_1__ cls ;
 int qtrue ;

void Con_MessageMode2_f (void) {
 chat_playerNum = -1;
 chat_team = qtrue;
 Field_Clear( &chatField );
 chatField.widthInChars = 25;
 cls.keyCatchers ^= KEYCATCH_MESSAGE;
}
