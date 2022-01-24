#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(const char *const input, const int nelements, char *const output) {
  int _pos = 0;

  for (int i = 0; i < nelements;) {
    unsigned char counter = 1;
    char          num = input[i];

    for (++i; i < nelements; i++) {
      if (input[i] == num) {
        counter++;
        if (counter == FUNC0(7)) {
          i++;
          break;
        }
      } else {
        break;
      }
    }

    // Encode the data.
    if (num == 1) {
      output[_pos++] = FUNC0(1) | (counter << 1);
    } else if (num == 0) {
      output[_pos++] = (counter << 1) | FUNC0(0);
    } else {
      FUNC2("Wrong bool value!\n");
      FUNC1(1);
    }
  }

  return _pos;
}