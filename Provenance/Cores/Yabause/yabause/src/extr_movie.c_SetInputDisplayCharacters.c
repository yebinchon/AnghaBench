
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* data; } ;


 int * Buttons ;
 int * Buttons2 ;
 char* InputDisplayString ;
 TYPE_1__ PORTDATA1 ;
 int * Spaces ;
 int * Spaces2 ;
 char* str ;
 int strcat (char*,int ) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void SetInputDisplayCharacters(void) {

 int x;

 strcpy(str, "");

 for (x = 0; x < 8; x++) {

  if(PORTDATA1.data[2] & (1 << x)) {
   strcat(str, Spaces[x]);
  }
  else
   strcat(str, Buttons[x]);

 }

 for (x = 0; x < 8; x++) {

  if(PORTDATA1.data[3] & (1 << x)) {
   strcat(str, Spaces2[x]);
  }
  else
   strcat(str, Buttons2[x]);

 }

 strcpy(InputDisplayString, str);
}
