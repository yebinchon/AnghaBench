
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EditString (int,int,char const*,char*,int,int,int,int,int *,int) ;

__attribute__((used)) static int BasicUIEditString(const char *title, char *string, int size)
{
 return EditString(0x9a, 0x94, title, string, size, 3, 11, 32, ((void*)0), -1);
}
