#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ verbose; } ;
struct Curl_easy {TYPE_1__ set; } ;

/* Variables and functions */
 unsigned int CURL_IAC ; 
#define  CURL_NEW_ENV_VALUE 137 
#define  CURL_NEW_ENV_VAR 136 
 int CURL_SE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
#define  CURL_TELOPT_NAWS 135 
#define  CURL_TELOPT_NEW_ENVIRON 134 
 scalar_t__ FUNC3 (unsigned char) ; 
#define  CURL_TELOPT_TTYPE 133 
#define  CURL_TELOPT_XDISPLOC 132 
#define  CURL_TELQUAL_INFO 131 
#define  CURL_TELQUAL_IS 130 
#define  CURL_TELQUAL_NAME 129 
#define  CURL_TELQUAL_SEND 128 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,char*,...) ; 

__attribute__((used)) static void FUNC5(struct Curl_easy *data,
                     int direction,             /* '<' or '>' */
                     unsigned char *pointer,    /* where suboption data is */
                     size_t length)             /* length of suboption data */
{
  if(data->set.verbose) {
    unsigned int i = 0;
    if(direction) {
      FUNC4(data, "%s IAC SB ", (direction == '<')? "RCVD":"SENT");
      if(length >= 3) {
        int j;

        i = pointer[length-2];
        j = pointer[length-1];

        if(i != CURL_IAC || j != CURL_SE) {
          FUNC4(data, "(terminated by ");
          if(FUNC3(i))
            FUNC4(data, "%s ", FUNC2(i));
          else if(FUNC1(i))
            FUNC4(data, "%s ", FUNC0(i));
          else
            FUNC4(data, "%u ", i);
          if(FUNC3(j))
            FUNC4(data, "%s", FUNC2(j));
          else if(FUNC1(j))
            FUNC4(data, "%s", FUNC0(j));
          else
            FUNC4(data, "%d", j);
          FUNC4(data, ", not IAC SE!) ");
        }
      }
      length -= 2;
    }
    if(length < 1) {
      FUNC4(data, "(Empty suboption?)");
      return;
    }

    if(FUNC3(pointer[0])) {
      switch(pointer[0]) {
      case CURL_TELOPT_TTYPE:
      case CURL_TELOPT_XDISPLOC:
      case CURL_TELOPT_NEW_ENVIRON:
      case CURL_TELOPT_NAWS:
        FUNC4(data, "%s", FUNC2(pointer[0]));
        break;
      default:
        FUNC4(data, "%s (unsupported)", FUNC2(pointer[0]));
        break;
      }
    }
    else
      FUNC4(data, "%d (unknown)", pointer[i]);

    switch(pointer[0]) {
    case CURL_TELOPT_NAWS:
      if(length > 4)
        FUNC4(data, "Width: %d ; Height: %d", (pointer[1]<<8) | pointer[2],
              (pointer[3]<<8) | pointer[4]);
      break;
    default:
      switch(pointer[1]) {
      case CURL_TELQUAL_IS:
        FUNC4(data, " IS");
        break;
      case CURL_TELQUAL_SEND:
        FUNC4(data, " SEND");
        break;
      case CURL_TELQUAL_INFO:
        FUNC4(data, " INFO/REPLY");
        break;
      case CURL_TELQUAL_NAME:
        FUNC4(data, " NAME");
        break;
      }

      switch(pointer[0]) {
      case CURL_TELOPT_TTYPE:
      case CURL_TELOPT_XDISPLOC:
        pointer[length] = 0;
        FUNC4(data, " \"%s\"", &pointer[2]);
        break;
      case CURL_TELOPT_NEW_ENVIRON:
        if(pointer[1] == CURL_TELQUAL_IS) {
          FUNC4(data, " ");
          for(i = 3; i < length; i++) {
            switch(pointer[i]) {
            case CURL_NEW_ENV_VAR:
              FUNC4(data, ", ");
              break;
            case CURL_NEW_ENV_VALUE:
              FUNC4(data, " = ");
              break;
            default:
              FUNC4(data, "%c", pointer[i]);
              break;
            }
          }
        }
        break;
      default:
        for(i = 2; i < length; i++)
          FUNC4(data, " %.2x", pointer[i]);
        break;
      }
    }
    if(direction)
      FUNC4(data, "\n");
  }
}