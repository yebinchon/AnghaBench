#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_10__ {size_t cursor; char* buffer; } ;
typedef  TYPE_1__ field_t ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_12__ {int /*<<< orphan*/  value; } ;
struct TYPE_11__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 TYPE_1__* FUNC8 () ; 
 TYPE_4__* com_dedicated ; 
 scalar_t__ qfalse ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ stdin_active ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 size_t FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_1__ tty_con ; 
 char tty_erase ; 
 TYPE_2__* ttycon ; 
 int /*<<< orphan*/  FUNC17 (int,char*,int) ; 

char *FUNC18(void)
{
  // we use this when sending back commands
  static char text[256];
  int i;
  int avail;
  char key;
  field_t *history;

  if (ttycon && ttycon->value)
  {
    avail = FUNC9(0, &key, 1);
    if (avail != -1)
    {
      // we have something
      // backspace?
      // NOTE TTimo testing a lot of values .. seems it's the only way to get it to work everywhere
      if ((key == tty_erase) || (key == 127) || (key == 8))
      {
        if (tty_con.cursor > 0)
        {
          tty_con.cursor--;
          tty_con.buffer[tty_con.cursor] = '\0';
          FUNC13();
        }
        return NULL;
      }
      // check if this is a control char
      if ((key) && (key) < ' ')
      {
        if (key == '\n')
        {
          // push it in history
          FUNC6(&tty_con);
          FUNC11(text, tty_con.buffer);
          FUNC4(&tty_con);
          key = '\n';
          FUNC17(1, &key, 1);
          return text;
        }
        if (key == '\t')
        {
          FUNC15();
          FUNC5( &tty_con );
          // Field_CompleteCommand does weird things to the string, do a cleanup
          //   it adds a '\' at the beginning of the string
          //   cursor doesn't reflect actual length of the string that's sent back
          tty_con.cursor = FUNC12(tty_con.buffer);
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
          FUNC16();
          return NULL;
        }
        avail = FUNC9(0, &key, 1);
        if (avail != -1)
        {
          // VT 100 keys
          if (key == '[' || key == 'O')
          {
            avail = FUNC9(0, &key, 1);
            if (avail != -1)
            {
              switch (key)
              {
              case 'A':
                history = FUNC8();
                if (history)
                {
                  FUNC15();
                  tty_con = *history;
                  FUNC16();
                }
                FUNC14();
                return NULL;
                break;
              case 'B':
                history = FUNC7();
                FUNC15();
                if (history)
                {
                  tty_con = *history;
                } else
                {
                  FUNC4(&tty_con);
                }
                FUNC16();
                FUNC14();
                return NULL;
                break;
              case 'C':
                return NULL;
              case 'D':
                return NULL;
              }
            }
          }
        }
        FUNC0("droping ISCTL sequence: %d, tty_erase: %d\n", key, tty_erase);
        FUNC14();
        return NULL;
      }
      // push regular character
      tty_con.buffer[tty_con.cursor] = key;
      tty_con.cursor++;
      // print the current line (this is differential)
      FUNC17(1, &key, 1);
    }
    return NULL;
  } else
  {
    int     len;
    fd_set  fdset;
    struct timeval timeout;

    if (!com_dedicated || !com_dedicated->value)
      return NULL;

    if (!stdin_active)
      return NULL;

    FUNC3(&fdset);
    FUNC2(0, &fdset); // stdin
    timeout.tv_sec = 0;
    timeout.tv_usec = 0;
    if (FUNC10 (1, &fdset, NULL, NULL, &timeout) == -1 || !FUNC1(0, &fdset))
    {
      return NULL;
    }

    len = FUNC9 (0, text, sizeof(text));
    if (len == 0)
    { // eof!
      stdin_active = qfalse;
      return NULL;
    }

    if (len < 1)
      return NULL;
    text[len-1] = 0;    // rip off the /n and terminate

    return text;
  }
}