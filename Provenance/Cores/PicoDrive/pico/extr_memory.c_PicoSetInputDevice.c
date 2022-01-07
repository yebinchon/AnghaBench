
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_read_func ;
typedef enum input_device { ____Placeholder_input_device } input_device ;




 int ** port_readers ;
 int * read_nothing ;
 int * read_pad_3btn ;
 int * read_pad_6btn ;

void PicoSetInputDevice(int port, enum input_device device)
{
  port_read_func *func;

  if (port < 0 || port > 2)
    return;

  switch (device) {
  case 129:
    func = read_pad_3btn;
    break;

  case 128:
    func = read_pad_6btn;
    break;

  default:
    func = read_nothing;
    break;
  }

  port_readers[port] = func;
}
