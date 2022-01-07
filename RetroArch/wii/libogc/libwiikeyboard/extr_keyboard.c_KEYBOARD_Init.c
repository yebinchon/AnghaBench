
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef int s32 ;
typedef scalar_t__ keyPressCallback ;
struct TYPE_5__ {scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_4__ {scalar_t__ layout; } ;


 int CONF_GetLanguage () ;
 scalar_t__ IPC_OK ;
 int KBD_THREAD_PRIO ;
 int KBD_THREAD_STACKSIZE ;
 scalar_t__ KB_DE ;
 scalar_t__ KB_ES ;
 scalar_t__ KB_FR ;
 scalar_t__ KB_IT ;
 scalar_t__ KB_JP ;
 scalar_t__ KB_NL ;
 scalar_t__ KB_NONE ;
 scalar_t__ KB_US ;
 int KEYBOARD_FlushEvents () ;
 int LWP_CreateThread (int *,int ,int *,int ,int ,int ) ;
 int LWP_JoinThread (int ,int *) ;
 int O_RDONLY ;
 size_t STD_IN ;
 int USBKeyboard_Close () ;
 int USBKeyboard_Deinitialize () ;
 scalar_t__ USBKeyboard_Initialize () ;
 scalar_t__ USB_Initialize () ;
 int _IONBF ;
 int __lwp_queue_init_empty (int *) ;
 scalar_t__ _get_keymap_by_name (char*) ;
 int _kbd_buf_stack ;
 int _kbd_buf_thread ;
 int _kbd_buf_thread_func ;
 int _kbd_stack ;
 int _kbd_thread ;
 int _kbd_thread_func ;
 int _kbd_thread_quit ;
 int _kbd_thread_running ;
 TYPE_3__ _keyBuffer ;
 int _queue ;
 scalar_t__ _readKey_cb ;
 int _sc_map ;
 int _sc_maplen ;
 TYPE_1__ _ukbd_keymapdata ;
 int close (int) ;
 int ** devoptab_list ;
 int fstat (int,struct stat*) ;
 scalar_t__ isalpha (int) ;
 int memset (int ,int ,int ) ;
 int open (char*,int ) ;
 scalar_t__ read (int,char*,scalar_t__) ;
 int setvbuf (int ,int *,int ,int ) ;
 int std_in ;
 int stdin ;
 scalar_t__ wskbd_load_keymap (TYPE_1__*,int *,int *) ;

s32 KEYBOARD_Init(keyPressCallback keypress_cb)
{
 int fd;
 struct stat st;
 char keymap[64];
 size_t i;

 if (USB_Initialize() != IPC_OK)
  return -1;

 if (USBKeyboard_Initialize() != IPC_OK) {
  return -2;
 }

 if (_ukbd_keymapdata.layout == KB_NONE) {
  keymap[0] = 0;
  fd = open("/wiikbd.map", O_RDONLY);

  if ((fd > 0) && !fstat(fd, &st)) {
   if ((st.st_size > 0) && (st.st_size < 64) &&
    (st.st_size == read(fd, keymap, st.st_size))) {
    keymap[63] = 0;
    for (i = 0; i < 64; ++i) {
     if ((keymap[i] != '-') && (isalpha((int)keymap[i]) == 0)) {
      keymap[i] = 0;
      break;
     }
    }
   }

   close(fd);
  }

  _ukbd_keymapdata.layout = _get_keymap_by_name(keymap);
 }

 if (_ukbd_keymapdata.layout == KB_NONE) {
  switch (CONF_GetLanguage()) {
  case 134:
   _ukbd_keymapdata.layout = KB_DE;
   break;

  case 132:
   _ukbd_keymapdata.layout = KB_JP;
   break;

  case 135:
   _ukbd_keymapdata.layout = KB_FR;
   break;

  case 129:
   _ukbd_keymapdata.layout = KB_ES;
   break;

  case 133:
   _ukbd_keymapdata.layout = KB_IT;
   break;

  case 136:
   _ukbd_keymapdata.layout = KB_NL;
   break;

  case 130:
  case 128:
  case 131:
  default:
   _ukbd_keymapdata.layout = KB_US;
   break;
  }
 }

 if (wskbd_load_keymap(&_ukbd_keymapdata, &_sc_map, &_sc_maplen) < 0) {
  _ukbd_keymapdata.layout = KB_NONE;

  return -4;
 }

 __lwp_queue_init_empty(&_queue);

 if (!_kbd_thread_running) {

  _kbd_thread_quit = 0;

  memset(_kbd_stack, 0, KBD_THREAD_STACKSIZE);

  s32 res = LWP_CreateThread(&_kbd_thread, _kbd_thread_func, ((void*)0),
         _kbd_stack, KBD_THREAD_STACKSIZE,
         KBD_THREAD_PRIO);

  if (res) {
   USBKeyboard_Close();

   return -6;
  }

  if(keypress_cb)
  {
   _keyBuffer.head = 0;
   _keyBuffer.tail = 0;

   res = LWP_CreateThread(&_kbd_buf_thread, _kbd_buf_thread_func, ((void*)0),
         _kbd_buf_stack, KBD_THREAD_STACKSIZE,
         KBD_THREAD_PRIO);
   if(res) {
    _kbd_thread_quit = 1;

    LWP_JoinThread(_kbd_thread, ((void*)0));

    USBKeyboard_Close();
    KEYBOARD_FlushEvents();
    USBKeyboard_Deinitialize();
    _kbd_thread_running = 0;
    return -6;
   }

   devoptab_list[STD_IN] = &std_in;
   setvbuf(stdin, ((void*)0) , _IONBF, 0);
   _readKey_cb = keypress_cb;
  }
  _kbd_thread_running = 1;
 }
 return 0;
}
