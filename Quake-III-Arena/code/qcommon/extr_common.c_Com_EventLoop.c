
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int evType; int evTime; scalar_t__ evPtr; int evPtrLength; int evValue2; int evValue; } ;
typedef TYPE_1__ sysEvent_t ;
typedef int netadr_t ;
struct TYPE_11__ {unsigned int maxsize; int cursize; int data; } ;
typedef TYPE_2__ msg_t ;
typedef int evFrom ;
typedef int byte ;
typedef int bufData ;
struct TYPE_13__ {int value; } ;
struct TYPE_12__ {scalar_t__ integer; } ;


 int CL_CharEvent (int ) ;
 int CL_JoystickEvent (int ,int ,int) ;
 int CL_KeyEvent (int ,int ,int) ;
 int CL_MouseEvent (int ,int ,int) ;
 int CL_PacketEvent (int ,TYPE_2__*) ;
 int Cbuf_AddText (char*) ;
 int Com_Error (int ,char*,int) ;
 TYPE_1__ Com_GetEvent () ;
 int Com_Memcpy (int ,int *,int ) ;
 int Com_Printf (char*) ;
 int Com_RunAndTimeServerPacket (int *,TYPE_2__*) ;
 int ERR_FATAL ;
 int MAX_MSGLEN ;
 int MSG_Init (TYPE_2__*,int *,int) ;
 scalar_t__ NET_GetLoopPacket (int ,int *,TYPE_2__*) ;
 int NS_CLIENT ;
 int NS_SERVER ;
 int Q_random (int*) ;







 int Z_Free (scalar_t__) ;
 TYPE_4__* com_dropsim ;
 TYPE_3__* com_sv_running ;

int Com_EventLoop( void ) {
 sysEvent_t ev;
 netadr_t evFrom;
 byte bufData[MAX_MSGLEN];
 msg_t buf;

 MSG_Init( &buf, bufData, sizeof( bufData ) );

 while ( 1 ) {
  ev = Com_GetEvent();


  if ( ev.evType == 129 ) {

   while ( NET_GetLoopPacket( NS_CLIENT, &evFrom, &buf ) ) {
    CL_PacketEvent( evFrom, &buf );
   }

   while ( NET_GetLoopPacket( NS_SERVER, &evFrom, &buf ) ) {

    if ( com_sv_running->integer ) {
     Com_RunAndTimeServerPacket( &evFrom, &buf );
    }
   }

   return ev.evTime;
  }


  switch ( ev.evType ) {
  default:

   Com_Error( ERR_FATAL, "Com_EventLoop: bad event type %i", ev.evType );
   break;
        case 129:
            break;
  case 131:
   CL_KeyEvent( ev.evValue, ev.evValue2, ev.evTime );
   break;
  case 134:
   CL_CharEvent( ev.evValue );
   break;
  case 130:
   CL_MouseEvent( ev.evValue, ev.evValue2, ev.evTime );
   break;
  case 132:
   CL_JoystickEvent( ev.evValue, ev.evValue2, ev.evTime );
   break;
  case 133:
   Cbuf_AddText( (char *)ev.evPtr );
   Cbuf_AddText( "\n" );
   break;
  case 128:



   if ( com_dropsim->value > 0 ) {
    static int seed;

    if ( Q_random( &seed ) < com_dropsim->value ) {
     break;
    }
   }

   evFrom = *(netadr_t *)ev.evPtr;
   buf.cursize = ev.evPtrLength - sizeof( evFrom );





   if ( (unsigned)buf.cursize > buf.maxsize ) {
    Com_Printf("Com_EventLoop: oversize packet\n");
    continue;
   }
   Com_Memcpy( buf.data, (byte *)((netadr_t *)ev.evPtr + 1), buf.cursize );
   if ( com_sv_running->integer ) {
    Com_RunAndTimeServerPacket( &evFrom, &buf );
   } else {
    CL_PacketEvent( evFrom, &buf );
   }
   break;
  }


  if ( ev.evPtr ) {
   Z_Free( ev.evPtr );
  }
 }

 return 0;
}
