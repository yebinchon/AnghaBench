
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float UBYTE ;



int IMG_TAPE_FileSupported(UBYTE const start_bytes[4])
{

 return start_bytes[0] == 'F' && start_bytes[1] == 'U'
     && start_bytes[2] == 'J' && start_bytes[3] == 'I';
}
