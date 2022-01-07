
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURSES_CENTRAL ;
 int CURSES_LEFT ;
 int CURSES_RIGHT ;
 int CURSES_WIDE_1 ;
 int CURSES_WIDE_2 ;
 int FALSE ;
 int Log_print (char*) ;
 int Sound_Initialise (int*,char**) ;
 int TRUE ;
 int cbreak () ;
 int curs_set (int ) ;
 int curses_mode ;
 int initscr () ;
 int keypad (int ,int) ;
 int nodelay (int ,int) ;
 int noecho () ;
 int stdscr ;
 scalar_t__ strcmp (char*,char*) ;

int PLATFORM_Initialise(int *argc, char *argv[])
{
 int i;
 int j;

 for (i = j = 1; i < *argc; i++) {
  if (strcmp(argv[i], "-left") == 0)
   curses_mode = CURSES_LEFT;
  else if (strcmp(argv[i], "-central") == 0)
   curses_mode = CURSES_CENTRAL;
  else if (strcmp(argv[i], "-right") == 0)
   curses_mode = CURSES_RIGHT;
  else if (strcmp(argv[i], "-wide1") == 0)
   curses_mode = CURSES_WIDE_1;
  else if (strcmp(argv[i], "-wide2") == 0)
   curses_mode = CURSES_WIDE_2;
  else {
   if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-central         Center emulated screen\n"
           "\t-left            Align left\n"
           "\t-right           Align right (on 80 columns)\n"
           "\t-wide1           Use 80 columns\n"
           "\t-wide2           Use 80 columns, display twice"
          );
   }
   argv[j++] = argv[i];
  }
 }

 *argc = j;

 initscr();
 noecho();
 cbreak();
 keypad(stdscr, TRUE);
 curs_set(0);
 nodelay(stdscr, 1);






 return TRUE;
}
