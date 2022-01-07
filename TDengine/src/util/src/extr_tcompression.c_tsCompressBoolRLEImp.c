
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char INT8MASK (int) ;
 int exit (int) ;
 int perror (char*) ;

int tsCompressBoolRLEImp(const char *const input, const int nelements, char *const output) {
  int _pos = 0;

  for (int i = 0; i < nelements;) {
    unsigned char counter = 1;
    char num = input[i];

    for (++i; i < nelements; i++) {
      if (input[i] == num) {
        counter++;
        if (counter == INT8MASK(7)) {
          i++;
          break;
        }
      } else {
        break;
      }
    }


    if (num == 1) {
      output[_pos++] = INT8MASK(1) | (counter << 1);
    } else if (num == 0) {
      output[_pos++] = (counter << 1) | INT8MASK(0);
    } else {
      perror("Wrong bool value!\n");
      exit(1);
    }
  }

  return _pos;
}
