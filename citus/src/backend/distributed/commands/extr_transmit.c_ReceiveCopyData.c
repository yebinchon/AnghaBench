
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int EOF ;
 int ERRCODE_CONNECTION_FAILURE ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERRCODE_QUERY_CANCELED ;
 int ERROR ;
 int HOLD_CANCEL_INTERRUPTS () ;
 int RESUME_CANCEL_INTERRUPTS () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int pq_getbyte () ;
 int pq_getmessage (int ,int const) ;
 int pq_getmsgstring (int ) ;
 int pq_startmsgread () ;

__attribute__((used)) static bool
ReceiveCopyData(StringInfo copyData)
{
 int messageType = 0;
 int messageCopied = 0;
 bool copyDone = 1;
 const int unlimitedSize = 0;

 HOLD_CANCEL_INTERRUPTS();
 pq_startmsgread();
 messageType = pq_getbyte();
 if (messageType == EOF)
 {
  ereport(ERROR, (errcode(ERRCODE_CONNECTION_FAILURE),
      errmsg("unexpected EOF on client connection")));
 }


 messageCopied = pq_getmessage(copyData, unlimitedSize);
 if (messageCopied == EOF)
 {
  ereport(ERROR, (errcode(ERRCODE_CONNECTION_FAILURE),
      errmsg("unexpected EOF on client connection")));
 }

 RESUME_CANCEL_INTERRUPTS();

 switch (messageType)
 {
  case 'd':
  {
   copyDone = 0;
   break;
  }

  case 'c':
  {
   copyDone = 1;
   break;
  }

  case 'f':
  {
   ereport(ERROR, (errcode(ERRCODE_QUERY_CANCELED),
       errmsg("COPY data failed: %s", pq_getmsgstring(copyData))));
   break;
  }

  case 'H':
  case 'S':
  {





   copyDone = 0;
   break;
  }

  default:
  {
   ereport(ERROR, (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("unexpected message type 0x%02X during COPY data",
           messageType)));
   break;
  }
 }

 return copyDone;
}
