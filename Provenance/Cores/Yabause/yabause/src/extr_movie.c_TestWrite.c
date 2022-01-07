
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MovieBufferStruct {int size; int data; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (int ,int,int ,int *) ;

void TestWrite(struct MovieBufferStruct tempbuffer) {

 FILE* tempbuffertest;

 tempbuffertest=fopen("rmiab.txt", "wb");
 fwrite (tempbuffer.data, 1, tempbuffer.size, tempbuffertest);
 fclose(tempbuffertest);
}
