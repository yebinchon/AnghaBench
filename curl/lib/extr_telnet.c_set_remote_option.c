
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct TELNET {int* him; int* himq; } ;
struct TYPE_3__ {scalar_t__ protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 int CURL_DO ;
 int CURL_DONT ;






 int send_negotiation (struct connectdata*,int ,int) ;

__attribute__((used)) static
void set_remote_option(struct connectdata *conn, int option, int newstate)
{
  struct TELNET *tn = (struct TELNET *)conn->data->req.protop;
  if(newstate == 128) {
    switch(tn->him[option]) {
    case 132:
      tn->him[option] = 129;
      send_negotiation(conn, CURL_DO, option);
      break;

    case 128:

      break;

    case 130:
      switch(tn->himq[option]) {
      case 133:

        tn->himq[option] = 131;
        break;
      case 131:

        break;
      }
      break;

    case 129:
      switch(tn->himq[option]) {
      case 133:

        break;
      case 131:
        tn->himq[option] = 133;
        break;
      }
      break;
    }
  }
  else {
    switch(tn->him[option]) {
    case 132:

      break;

    case 128:
      tn->him[option] = 130;
      send_negotiation(conn, CURL_DONT, option);
      break;

    case 130:
      switch(tn->himq[option]) {
      case 133:

        break;
      case 131:
        tn->himq[option] = 133;
        break;
      }
      break;

    case 129:
      switch(tn->himq[option]) {
      case 133:
        tn->himq[option] = 131;
        break;
      case 131:
        break;
      }
      break;
    }
  }
}
