
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hostent {scalar_t__* h_addr_list; } ;
typedef int boolean ;
struct TYPE_8__ {char ticdup; int extratics; int numplayers; int numnodes; int deathmatch; char consoleplayer; void* id; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;


 int AF_INET ;
 int BindToLocalPort (void*,int ) ;
 void* DOOMCOM_ID ;
 int DOOMPORT ;
 int FIONBIO ;
 int I_Error (char*,char*) ;
 int M_CheckParm (char*) ;
 int PacketGet ;
 int PacketSend ;
 void* UDPsocket () ;
 int atoi (char*) ;
 TYPE_3__* doomcom ;
 struct hostent* gethostbyname (char*) ;
 int htons (int) ;
 int inet_addr (char*) ;
 void* insocket ;
 int ioctl (void*,int ,int*) ;
 TYPE_3__* malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int myargc ;
 char** myargv ;
 int netgame ;
 int netget ;
 int netsend ;
 int printf (char*,int) ;
 TYPE_2__* sendaddress ;
 void* sendsocket ;

void I_InitNetwork (void)
{
    boolean trueval = 1;
    int i;
    int p;
    struct hostent* hostentry;

    doomcom = malloc (sizeof (*doomcom) );
    memset (doomcom, 0, sizeof(*doomcom) );


    i = M_CheckParm ("-dup");
    if (i && i< myargc-1)
    {
 doomcom->ticdup = myargv[i+1][0]-'0';
 if (doomcom->ticdup < 1)
     doomcom->ticdup = 1;
 if (doomcom->ticdup > 9)
     doomcom->ticdup = 9;
    }
    else
 doomcom-> ticdup = 1;

    if (M_CheckParm ("-extratic"))
 doomcom-> extratics = 1;
    else
 doomcom-> extratics = 0;

    p = M_CheckParm ("-port");
    if (p && p<myargc-1)
    {
 DOOMPORT = atoi (myargv[p+1]);
 printf ("using alternate port %i\n",DOOMPORT);
    }



    i = M_CheckParm ("-net");
    if (!i)
    {

 netgame = 0;
 doomcom->id = DOOMCOM_ID;
 doomcom->numplayers = doomcom->numnodes = 1;
 doomcom->deathmatch = 0;
 doomcom->consoleplayer = 0;
 return;
    }

    netsend = PacketSend;
    netget = PacketGet;
    netgame = 1;


    doomcom->consoleplayer = myargv[i+1][0]-'1';

    doomcom->numnodes = 1;

    i++;
    while (++i < myargc && myargv[i][0] != '-')
    {
 sendaddress[doomcom->numnodes].sin_family = AF_INET;
 sendaddress[doomcom->numnodes].sin_port = htons(DOOMPORT);
 if (myargv[i][0] == '.')
 {
     sendaddress[doomcom->numnodes].sin_addr.s_addr
  = inet_addr (myargv[i]+1);
 }
 else
 {
     hostentry = gethostbyname (myargv[i]);
     if (!hostentry)
  I_Error ("gethostbyname: couldn't find %s", myargv[i]);
     sendaddress[doomcom->numnodes].sin_addr.s_addr
  = *(int *)hostentry->h_addr_list[0];
 }
 doomcom->numnodes++;
    }

    doomcom->id = DOOMCOM_ID;
    doomcom->numplayers = doomcom->numnodes;


    insocket = UDPsocket ();
    BindToLocalPort (insocket,htons(DOOMPORT));
    ioctl (insocket, FIONBIO, &trueval);

    sendsocket = UDPsocket ();
}
