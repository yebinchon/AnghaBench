
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int evPtrLength; struct TYPE_8__* evPtr; } ;
typedef TYPE_1__ sysEvent_t ;
typedef int ev ;
struct TYPE_9__ {int integer; } ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int FS_Read (TYPE_1__*,int,int ) ;
 int FS_Write (TYPE_1__*,int,int ) ;
 TYPE_1__ Sys_GetEvent () ;
 TYPE_1__* Z_Malloc (int) ;
 TYPE_2__* com_journal ;
 int com_journalFile ;

sysEvent_t Com_GetRealEvent( void ) {
 int r;
 sysEvent_t ev;


 if ( com_journal->integer == 2 ) {
  r = FS_Read( &ev, sizeof(ev), com_journalFile );
  if ( r != sizeof(ev) ) {
   Com_Error( ERR_FATAL, "Error reading from journal file" );
  }
  if ( ev.evPtrLength ) {
   ev.evPtr = Z_Malloc( ev.evPtrLength );
   r = FS_Read( ev.evPtr, ev.evPtrLength, com_journalFile );
   if ( r != ev.evPtrLength ) {
    Com_Error( ERR_FATAL, "Error reading from journal file" );
   }
  }
 } else {
  ev = Sys_GetEvent();


  if ( com_journal->integer == 1 ) {
   r = FS_Write( &ev, sizeof(ev), com_journalFile );
   if ( r != sizeof(ev) ) {
    Com_Error( ERR_FATAL, "Error writing to journal file" );
   }
   if ( ev.evPtrLength ) {
    r = FS_Write( ev.evPtr, ev.evPtrLength, com_journalFile );
    if ( r != ev.evPtrLength ) {
     Com_Error( ERR_FATAL, "Error writing to journal file" );
    }
   }
  }
 }

 return ev;
}
