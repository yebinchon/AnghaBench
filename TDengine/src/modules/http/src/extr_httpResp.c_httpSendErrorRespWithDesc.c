
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ipstr; int fd; } ;
typedef TYPE_1__ HttpContext ;
 int httpError (char*,TYPE_1__*,int ,int ,int) ;
 char** httpMsg ;
 int httpSendErrorRespImp (TYPE_1__*,int,char*,int,char*) ;

void httpSendErrorRespWithDesc(HttpContext *pContext, int errNo, char *desc) {
  int httpCode = 500;
  char *httpCodeStr = "Internal Server Error";
  switch (errNo) {
    case 160:
      httpCode = 200;
      httpCodeStr = "OK";
      break;
    case 162:
    case 128:
      httpCode = 404;
      httpCodeStr = "Not Found";
      break;
    case 167:
      httpCode = 405;
      httpCodeStr = "Method Not Allowed";
      break;
    case 166:
      httpCode = 505;
      httpCodeStr = "HTTP Version Not Supported";
      break;
    case 168:
      httpCode = 406;
      httpCodeStr = "Not Acceptable";
      break;
    case 163:
      httpCode = 413;
      httpCodeStr = "Request Entity Too Large";
      break;
    case 171:
    case 170:
      httpCode = 409;
      httpCodeStr = "Conflict";
      break;
    case 165:
      httpCode = 414;
      httpCodeStr = "Request-URI Invalid";
      break;
    case 181:
    case 164:
      httpCode = 401;
      httpCodeStr = "Unauthorized";
      break;
    case 172:
      httpCode = 400;
      httpCodeStr = "Bad Request";
      break;
    case 161:
      httpCode = 421;
      httpCodeStr = "Too many connections";
      break;
    case 176:
    case 182:
      httpCode = 507;
      httpCodeStr = "Insufficient Storage";
      break;
    case 179:
    case 174:
    case 169:
    case 178:
    case 173:
      httpCode = 400;
      httpCodeStr = "Bad Request";
      break;
    case 175:
      httpCode = 421;
      httpCodeStr = "Too many connections";
      break;

    case 159:
    case 158:
    case 148:
    case 147:
    case 146:
    case 143:
    case 142:
    case 144:
    case 145:
    case 131:
    case 130:
    case 129:
    case 139:
    case 138:
    case 137:
    case 134:
    case 136:
    case 135:
    case 132:
    case 133:
    case 141:
    case 140:
    case 157:
    case 156:
    case 155:
    case 152:
    case 154:
    case 153:
    case 150:
    case 151:
    case 180:
    case 177:
    case 149:

    case 184:
    case 183:
      httpCode = 400;
      httpCodeStr = "Bad Request";
      break;
    default:
      httpError("context:%p, fd:%d, ip:%s, error:%d not recognized", pContext, pContext->fd, pContext->ipstr, errNo);
      break;
  }

  if (desc == ((void*)0)) {
    httpSendErrorRespImp(pContext, httpCode, httpCodeStr, errNo + 1000, httpMsg[errNo]);
  } else {
    httpSendErrorRespImp(pContext, httpCode, httpCodeStr, errNo + 1000, desc);
  }
}
