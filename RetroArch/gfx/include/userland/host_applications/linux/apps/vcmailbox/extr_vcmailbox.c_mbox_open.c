
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEVICE_FILE_NAME ;
 int MAJOR_NUM ;
 int exit (int) ;
 int open (char*,int ) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static int mbox_open()
{
   int file_desc;


   file_desc = open(DEVICE_FILE_NAME, 0);
   if (file_desc < 0) {
      printf("Can't open device file: %s\n", DEVICE_FILE_NAME);
      printf("Try creating a device file with: sudo mknod %s c %d 0\n", DEVICE_FILE_NAME, MAJOR_NUM);
      exit(-1);
   }
   return file_desc;
}
