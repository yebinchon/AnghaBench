
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
void rec_wont(struct connectdata *conn, int option)
{
  struct TELNET *tn = (struct TELNET *)conn->data->req.protop;
  switch(tn->him[option]) {
  case 132:

    break;

  case 128:
    tn->him[option] = 132;
    send_negotiation(conn, CURL_DONT, option);
    break;

  case 130:
    switch(tn->himq[option]) {
    case 133:
      tn->him[option] = 132;
      break;

    case 131:
      tn->him[option] = 129;
      tn->himq[option] = 133;
      send_negotiation(conn, CURL_DO, option);
      break;
    }
    break;

  case 129:
    switch(tn->himq[option]) {
    case 133:
      tn->him[option] = 132;
      break;
    case 131:
      tn->him[option] = 132;
      tn->himq[option] = 133;
      break;
    }
    break;
  }
}
