#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 TYPE_1__* S_sfx ; 
 int FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/ * channels ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  fdset ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * lengths ; 
 int /*<<< orphan*/  mytime ; 
 int FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  scratchset ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 scalar_t__ snd_verbose ; 
 int /*<<< orphan*/  stderr ; 
 int* steptable ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC15
( int		c,
  char**	v )
{

    int		done = 0;
    int		rc;
    int		nrc;
    int		sndnum;
    int		handle = 0;
    
    unsigned char	commandbuf[10];
    struct timeval	zerowait = { 0, 0 };

    
    int 	step;
    int 	vol;
    int		sep;
    
    int		i;
    int		waitingtofinish=0;

    // get sound data
    FUNC7(c, v);

    // init any data
    FUNC8();		

    FUNC3(11025, 16);

    FUNC2();

    if (snd_verbose)
	FUNC6(stderr, "ready\n");
    
    // parse commands and play sounds until done
    FUNC1(&fdset);
    FUNC0(0, &fdset);

    while (!done)
    {
	mytime++;

	if (!waitingtofinish)
	{
	    do {
		scratchset = fdset;
		rc = FUNC12(FD_SETSIZE, &scratchset, 0, 0, &zerowait);

		if (rc > 0)
		{
		    //	fprintf(stderr, "select is true\n");
		    // got a command
		    nrc = FUNC11(0, commandbuf, 1);

		    if (!nrc)
		    {
			done = 1;
			rc = 0;
		    }
		    else
		    {
			if (snd_verbose)
			    FUNC6(stderr, "cmd: %c", commandbuf[0]);

			switch (commandbuf[0])
			{
			  case 'p':
			    // play a new sound effect
			    FUNC11(0, commandbuf, 9);

			    if (snd_verbose)
			    {
				commandbuf[9]=0;
				FUNC6(stderr, "%s\n", commandbuf);
			    }

			    commandbuf[0] -=
				commandbuf[0]>='a' ? 'a'-10 : '0';
			    commandbuf[1] -=
				commandbuf[1]>='a' ? 'a'-10 : '0';
			    commandbuf[2] -=
				commandbuf[2]>='a' ? 'a'-10 : '0';
			    commandbuf[3] -=
				commandbuf[3]>='a' ? 'a'-10 : '0';
			    commandbuf[4] -=
				commandbuf[4]>='a' ? 'a'-10 : '0';
			    commandbuf[5] -=
				commandbuf[5]>='a' ? 'a'-10 : '0';
			    commandbuf[6] -=
				commandbuf[6]>='a' ? 'a'-10 : '0';
			    commandbuf[7] -=
				commandbuf[7]>='a' ? 'a'-10 : '0';

			    //	p<snd#><step><vol><sep>
			    sndnum = (commandbuf[0]<<4) + commandbuf[1];
			    step = (commandbuf[2]<<4) + commandbuf[3];
			    step = steptable[step];
			    vol = (commandbuf[4]<<4) + commandbuf[5];
			    sep = (commandbuf[6]<<4) + commandbuf[7];

			    handle = FUNC4(sndnum, vol, step, sep);
			    // returns the handle
			    //	outputushort(handle);
			    break;
			    
			  case 'q':
			    FUNC11(0, commandbuf, 1);
			    waitingtofinish = 1; rc = 0;
			    break;
			    
			  case 's':
			  {
			      int fd;
			      FUNC11(0, commandbuf, 3);
			      commandbuf[2] = 0;
			      fd = FUNC9((char*)commandbuf, O_CREAT|O_WRONLY, 0644);
			      commandbuf[0] -= commandbuf[0]>='a' ? 'a'-10 : '0';
			      commandbuf[1] -= commandbuf[1]>='a' ? 'a'-10 : '0';
			      sndnum = (commandbuf[0]<<4) + commandbuf[1];
			      FUNC14(fd, S_sfx[sndnum].data, lengths[sndnum]);
			      FUNC5(fd);
			  }
			  break;
			  
			  default:
			    FUNC6(stderr, "Did not recognize command\n");
			    break;
			}
		    }
		}
		else if (rc < 0)
		{
		    FUNC10();
		}
	    } while (rc > 0);
	}

	FUNC13();

	if (waitingtofinish)
	{
	    for(i=0 ; i<8 && !channels[i] ; i++);
	    
	    if (i==8)
		done=1;
	}

    }

    FUNC10();
    return 0;
}