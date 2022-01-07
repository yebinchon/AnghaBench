
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closesocket (scalar_t__) ;
 scalar_t__ draw_socket ;

void GLS_EndScene (void)
{
 closesocket (draw_socket);
 draw_socket = 0;
}
