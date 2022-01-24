#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  char uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_8__ {char* key; scalar_t__ code; scalar_t__ metaKey; scalar_t__ shiftKey; scalar_t__ altKey; scalar_t__ ctrlKey; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_3__ event; } ;
typedef  TYPE_1__ rwebinput_keyboard_event_t ;
struct TYPE_7__ {int* keys; } ;
typedef  TYPE_2__ rwebinput_input_t ;
typedef  TYPE_3__ EmscriptenKeyboardEvent ;

/* Variables and functions */
 scalar_t__ EMSCRIPTEN_EVENT_KEYDOWN ; 
 int /*<<< orphan*/  RETROKMOD_ALT ; 
 int /*<<< orphan*/  RETROKMOD_CTRL ; 
 int /*<<< orphan*/  RETROKMOD_META ; 
 int /*<<< orphan*/  RETROKMOD_SHIFT ; 
 unsigned int RETROK_BACKSPACE ; 
 unsigned int RETROK_KP_ENTER ; 
 unsigned int RETROK_LAST ; 
 unsigned int RETROK_RETURN ; 
 unsigned int RETROK_TAB ; 
 int /*<<< orphan*/  RETRO_DEVICE_KEYBOARD ; 
 char FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 char FUNC4 (char const**) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(rwebinput_input_t *rwebinput,
   rwebinput_keyboard_event_t *event)
{
   uint32_t keycode;
   unsigned translated_keycode;
   uint32_t character = 0;
   uint16_t mod = 0;
   const EmscriptenKeyboardEvent *key_event = &event->event;
   bool keydown = event->type == EMSCRIPTEN_EVENT_KEYDOWN;

   /* a printable key: populate character field */
   if (FUNC5(key_event->key) == 1)
   {
      const char *key_ptr = &key_event->key[0];
      character = FUNC4(&key_ptr);
   }

   if (key_event->ctrlKey)
      mod |= RETROKMOD_CTRL;
   if (key_event->altKey)
      mod |= RETROKMOD_ALT;
   if (key_event->shiftKey)
      mod |= RETROKMOD_SHIFT;
   if (key_event->metaKey)
      mod |= RETROKMOD_META;

   keycode = FUNC0(0, (const uint8_t *)key_event->code,
      FUNC3(key_event->code, sizeof(key_event->code)));
   translated_keycode = FUNC2(keycode);

   if (translated_keycode == RETROK_BACKSPACE)
      character = '\b';
   else if (translated_keycode == RETROK_RETURN ||
            translated_keycode == RETROK_KP_ENTER)
      character = '\n';
   else if (translated_keycode == RETROK_TAB)
      character = '\t';

   FUNC1(keydown, translated_keycode, character, mod,
      RETRO_DEVICE_KEYBOARD);

   if (translated_keycode < RETROK_LAST)
   {
      rwebinput->keys[translated_keycode] = keydown;
   }
}