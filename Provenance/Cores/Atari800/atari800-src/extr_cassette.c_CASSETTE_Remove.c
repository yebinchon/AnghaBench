
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CASSETTE_STATUS_NONE ;
 char* CASSETTE_description ;
 int CASSETTE_status ;
 int IMG_TAPE_Close (int *) ;
 int UpdateFlags () ;
 int * cassette_file ;

void CASSETTE_Remove(void)
{
 if (cassette_file != ((void*)0)) {
  IMG_TAPE_Close(cassette_file);
  cassette_file = ((void*)0);
 }
 CASSETTE_status = CASSETTE_STATUS_NONE;
 CASSETTE_description[0] = '\0';
 UpdateFlags();
}
