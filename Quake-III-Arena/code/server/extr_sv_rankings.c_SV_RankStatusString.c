
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GR_STATUS ;
__attribute__((used)) static char* SV_RankStatusString( GR_STATUS status )
{
 switch( status )
 {
  case 130: return "GR_STATUS_OK";
  case 135: return "GR_STATUS_ERROR";
  case 138: return "GR_STATUS_BADPARAMS";
  case 132: return "GR_STATUS_NETWORK";
  case 131: return "GR_STATUS_NOUSER";
  case 137: return "GR_STATUS_BADPASSWORD";
  case 139: return "GR_STATUS_BADGAME";
  case 129: return "GR_STATUS_PENDING";
  case 140: return "GR_STATUS_BADDOMAIN";
  case 136: return "GR_STATUS_DOMAINLOCK";
  case 128: return "GR_STATUS_TIMEOUT";
  case 133: return "GR_STATUS_INVALIDUSER";
  case 134: return "GR_STATUS_INVALIDCONTEXT";
  default: return "(UNKNOWN)";
 }
}
