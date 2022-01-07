
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CASSETTE_GetSize () ;
 int snprintf (char*,int,char*,int) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static void TapeSliderLabel(char *label, int value, void *user_data)
{
 if (value >= CASSETTE_GetSize())
  sprintf(label, "End");
 else
  snprintf(label, 10, "%i", value + 1);
}
