
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *DSoundError( int error ) {
 switch ( error ) {
 case 131:
  return "DSERR_BUFFERLOST";
 case 130:
  return "DSERR_INVALIDCALLS";
 case 129:
  return "DSERR_INVALIDPARAM";
 case 128:
  return "DSERR_PRIOLEVELNEEDED";
 }

 return "unknown";
}
