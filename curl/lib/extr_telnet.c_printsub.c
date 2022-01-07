
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ verbose; } ;
struct Curl_easy {TYPE_1__ set; } ;


 unsigned int CURL_IAC ;


 int CURL_SE ;
 int CURL_TELCMD (int) ;
 scalar_t__ CURL_TELCMD_OK (int) ;
 int CURL_TELOPT (unsigned char) ;


 scalar_t__ CURL_TELOPT_OK (unsigned char) ;






 int infof (struct Curl_easy*,char*,...) ;

__attribute__((used)) static void printsub(struct Curl_easy *data,
                     int direction,
                     unsigned char *pointer,
                     size_t length)
{
  if(data->set.verbose) {
    unsigned int i = 0;
    if(direction) {
      infof(data, "%s IAC SB ", (direction == '<')? "RCVD":"SENT");
      if(length >= 3) {
        int j;

        i = pointer[length-2];
        j = pointer[length-1];

        if(i != CURL_IAC || j != CURL_SE) {
          infof(data, "(terminated by ");
          if(CURL_TELOPT_OK(i))
            infof(data, "%s ", CURL_TELOPT(i));
          else if(CURL_TELCMD_OK(i))
            infof(data, "%s ", CURL_TELCMD(i));
          else
            infof(data, "%u ", i);
          if(CURL_TELOPT_OK(j))
            infof(data, "%s", CURL_TELOPT(j));
          else if(CURL_TELCMD_OK(j))
            infof(data, "%s", CURL_TELCMD(j));
          else
            infof(data, "%d", j);
          infof(data, ", not IAC SE!) ");
        }
      }
      length -= 2;
    }
    if(length < 1) {
      infof(data, "(Empty suboption?)");
      return;
    }

    if(CURL_TELOPT_OK(pointer[0])) {
      switch(pointer[0]) {
      case 133:
      case 132:
      case 134:
      case 135:
        infof(data, "%s", CURL_TELOPT(pointer[0]));
        break;
      default:
        infof(data, "%s (unsupported)", CURL_TELOPT(pointer[0]));
        break;
      }
    }
    else
      infof(data, "%d (unknown)", pointer[i]);

    switch(pointer[0]) {
    case 135:
      if(length > 4)
        infof(data, "Width: %d ; Height: %d", (pointer[1]<<8) | pointer[2],
              (pointer[3]<<8) | pointer[4]);
      break;
    default:
      switch(pointer[1]) {
      case 130:
        infof(data, " IS");
        break;
      case 128:
        infof(data, " SEND");
        break;
      case 131:
        infof(data, " INFO/REPLY");
        break;
      case 129:
        infof(data, " NAME");
        break;
      }

      switch(pointer[0]) {
      case 133:
      case 132:
        pointer[length] = 0;
        infof(data, " \"%s\"", &pointer[2]);
        break;
      case 134:
        if(pointer[1] == 130) {
          infof(data, " ");
          for(i = 3; i < length; i++) {
            switch(pointer[i]) {
            case 136:
              infof(data, ", ");
              break;
            case 137:
              infof(data, " = ");
              break;
            default:
              infof(data, "%c", pointer[i]);
              break;
            }
          }
        }
        break;
      default:
        for(i = 2; i < length; i++)
          infof(data, " %.2x", pointer[i]);
        break;
      }
    }
    if(direction)
      infof(data, "\n");
  }
}
