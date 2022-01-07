
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct TELNET {int* us; int* usq; } ;
struct TYPE_3__ {scalar_t__ protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;







 int CURL_WILL ;
 int CURL_WONT ;

 int send_negotiation (struct connectdata*,int ,int) ;

__attribute__((used)) static
void rec_dont(struct connectdata *conn, int option)
{
  struct TELNET *tn = (struct TELNET *)conn->data->req.protop;
  switch(tn->us[option]) {
  case 132:

    break;

  case 128:
    tn->us[option] = 132;
    send_negotiation(conn, CURL_WONT, option);
    break;

  case 130:
    switch(tn->usq[option]) {
    case 133:
      tn->us[option] = 132;
      break;

    case 131:
      tn->us[option] = 129;
      tn->usq[option] = 133;
      send_negotiation(conn, CURL_WILL, option);
      break;
    }
    break;

  case 129:
    switch(tn->usq[option]) {
    case 133:
      tn->us[option] = 132;
      break;
    case 131:
      tn->us[option] = 132;
      tn->usq[option] = 133;
      break;
    }
    break;
  }
}
