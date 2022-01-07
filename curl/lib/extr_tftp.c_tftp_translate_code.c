
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tftp_error_t ;
typedef int CURLcode ;


 int CURLE_ABORTED_BY_CALLBACK ;
 int CURLE_COULDNT_CONNECT ;
 int CURLE_OK ;
 int CURLE_OPERATION_TIMEDOUT ;
 int CURLE_REMOTE_DISK_FULL ;
 int CURLE_REMOTE_FILE_EXISTS ;
 int CURLE_TFTP_ILLEGAL ;
 int CURLE_TFTP_NOSUCHUSER ;
 int CURLE_TFTP_NOTFOUND ;
 int CURLE_TFTP_PERM ;
 int CURLE_TFTP_UNKNOWNID ;



 int TFTP_ERR_NONE ;
__attribute__((used)) static CURLcode tftp_translate_code(tftp_error_t error)
{
  CURLcode result = CURLE_OK;

  if(error != TFTP_ERR_NONE) {
    switch(error) {
    case 132:
      result = CURLE_TFTP_NOTFOUND;
      break;
    case 131:
      result = CURLE_TFTP_PERM;
      break;
    case 137:
      result = CURLE_REMOTE_DISK_FULL;
      break;
    case 129:
    case 135:
      result = CURLE_TFTP_ILLEGAL;
      break;
    case 128:
      result = CURLE_TFTP_UNKNOWNID;
      break;
    case 136:
      result = CURLE_REMOTE_FILE_EXISTS;
      break;
    case 133:
      result = CURLE_TFTP_NOSUCHUSER;
      break;
    case 130:
      result = CURLE_OPERATION_TIMEDOUT;
      break;
    case 134:
      result = CURLE_COULDNT_CONNECT;
      break;
    default:
      result = CURLE_ABORTED_BY_CALLBACK;
      break;
    }
  }
  else
    result = CURLE_OK;

  return result;
}
