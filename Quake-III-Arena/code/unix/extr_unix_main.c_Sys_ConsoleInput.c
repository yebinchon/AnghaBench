
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int text ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_10__ {size_t cursor; char* buffer; } ;
typedef TYPE_1__ field_t ;
typedef int fd_set ;
struct TYPE_12__ {int value; } ;
struct TYPE_11__ {scalar_t__ value; } ;


 int Com_DPrintf (char*,char,char) ;
 int FD_ISSET (int ,int *) ;
 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int Field_Clear (TYPE_1__*) ;
 int Field_CompleteCommand (TYPE_1__*) ;
 int Hist_Add (TYPE_1__*) ;
 TYPE_1__* Hist_Next () ;
 TYPE_1__* Hist_Prev () ;
 TYPE_4__* com_dedicated ;
 scalar_t__ qfalse ;
 int read (int ,char*,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 scalar_t__ stdin_active ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 int tty_Back () ;
 int tty_FlushIn () ;
 int tty_Hide () ;
 int tty_Show () ;
 TYPE_1__ tty_con ;
 char tty_erase ;
 TYPE_2__* ttycon ;
 int write (int,char*,int) ;

char *Sys_ConsoleInput(void)
{

  static char text[256];
  int i;
  int avail;
  char key;
  field_t *history;

  if (ttycon && ttycon->value)
  {
    avail = read(0, &key, 1);
    if (avail != -1)
    {



      if ((key == tty_erase) || (key == 127) || (key == 8))
      {
        if (tty_con.cursor > 0)
        {
          tty_con.cursor--;
          tty_con.buffer[tty_con.cursor] = '\0';
          tty_Back();
        }
        return ((void*)0);
      }

      if ((key) && (key) < ' ')
      {
        if (key == '\n')
        {

          Hist_Add(&tty_con);
          strcpy(text, tty_con.buffer);
          Field_Clear(&tty_con);
          key = '\n';
          write(1, &key, 1);
          return text;
        }
        if (key == '\t')
        {
          tty_Hide();
          Field_CompleteCommand( &tty_con );



          tty_con.cursor = strlen(tty_con.buffer);
          if (tty_con.cursor>0)
          {
            if (tty_con.buffer[0] == '\\')
            {
              for (i=0; i<=tty_con.cursor; i++)
              {
                tty_con.buffer[i] = tty_con.buffer[i+1];
              }
              tty_con.cursor--;
            }
          }
          tty_Show();
          return ((void*)0);
        }
        avail = read(0, &key, 1);
        if (avail != -1)
        {

          if (key == '[' || key == 'O')
          {
            avail = read(0, &key, 1);
            if (avail != -1)
            {
              switch (key)
              {
              case 'A':
                history = Hist_Prev();
                if (history)
                {
                  tty_Hide();
                  tty_con = *history;
                  tty_Show();
                }
                tty_FlushIn();
                return ((void*)0);
                break;
              case 'B':
                history = Hist_Next();
                tty_Hide();
                if (history)
                {
                  tty_con = *history;
                } else
                {
                  Field_Clear(&tty_con);
                }
                tty_Show();
                tty_FlushIn();
                return ((void*)0);
                break;
              case 'C':
                return ((void*)0);
              case 'D':
                return ((void*)0);
              }
            }
          }
        }
        Com_DPrintf("droping ISCTL sequence: %d, tty_erase: %d\n", key, tty_erase);
        tty_FlushIn();
        return ((void*)0);
      }

      tty_con.buffer[tty_con.cursor] = key;
      tty_con.cursor++;

      write(1, &key, 1);
    }
    return ((void*)0);
  } else
  {
    int len;
    fd_set fdset;
    struct timeval timeout;

    if (!com_dedicated || !com_dedicated->value)
      return ((void*)0);

    if (!stdin_active)
      return ((void*)0);

    FD_ZERO(&fdset);
    FD_SET(0, &fdset);
    timeout.tv_sec = 0;
    timeout.tv_usec = 0;
    if (select (1, &fdset, ((void*)0), ((void*)0), &timeout) == -1 || !FD_ISSET(0, &fdset))
    {
      return ((void*)0);
    }

    len = read (0, text, sizeof(text));
    if (len == 0)
    {
      stdin_active = qfalse;
      return ((void*)0);
    }

    if (len < 1)
      return ((void*)0);
    text[len-1] = 0;

    return text;
  }
}
