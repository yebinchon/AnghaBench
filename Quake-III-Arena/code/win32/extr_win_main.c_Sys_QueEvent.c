
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int evTime; int evValue; int evValue2; int evPtrLength; void* evPtr; int evType; } ;
typedef TYPE_1__ sysEvent_t ;
typedef int sysEventType_t ;


 int Com_Printf (char*) ;
 size_t MASK_QUED_EVENTS ;
 size_t MAX_QUED_EVENTS ;
 int Sys_Milliseconds () ;
 int Z_Free (void*) ;
 size_t eventHead ;
 TYPE_1__* eventQue ;
 size_t eventTail ;

void Sys_QueEvent( int time, sysEventType_t type, int value, int value2, int ptrLength, void *ptr ) {
 sysEvent_t *ev;

 ev = &eventQue[ eventHead & MASK_QUED_EVENTS ];
 if ( eventHead - eventTail >= MAX_QUED_EVENTS ) {
  Com_Printf("Sys_QueEvent: overflow\n");

  if ( ev->evPtr ) {
   Z_Free( ev->evPtr );
  }
  eventTail++;
 }

 eventHead++;

 if ( time == 0 ) {
  time = Sys_Milliseconds();
 }

 ev->evTime = time;
 ev->evType = type;
 ev->evValue = value;
 ev->evValue2 = value2;
 ev->evPtrLength = ptrLength;
 ev->evPtr = ptr;
}
