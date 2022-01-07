
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mouseSensitivity ;

void M_ChangeSensitivity(int choice)
{
    switch(choice)
    {
      case 0:
 if (mouseSensitivity)
     mouseSensitivity--;
 break;
      case 1:
 if (mouseSensitivity < 9)
     mouseSensitivity++;
 break;
    }
}
