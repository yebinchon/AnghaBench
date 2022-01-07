
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wi ;
struct TYPE_4__ {int cbSize; int rcClient; } ;
typedef TYPE_1__ WINDOWINFO ;


 int FrameRectMy ;
 int FrameWnd ;
 int GetWindowInfo (int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void UpdateRect(void)
{
  WINDOWINFO wi;
  memset(&wi, 0, sizeof(wi));
  wi.cbSize = sizeof(wi);
  GetWindowInfo(FrameWnd, &wi);
  FrameRectMy = wi.rcClient;
}
