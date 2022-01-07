
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FrameWnd ;
 int MessageBox (int ,char*,char*,int ) ;

void error(char *text)
{
  MessageBox(FrameWnd, text, "Error", 0);
}
