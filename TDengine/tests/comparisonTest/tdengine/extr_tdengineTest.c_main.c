
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ writeClients; } ;
struct TYPE_3__ {scalar_t__ totalRows; } ;


 TYPE_2__ arguments ;
 int parseArg (int,char**) ;
 int readData () ;
 TYPE_1__ statis ;
 int writeData () ;

int main(int argc, char *argv[]) {
  statis.totalRows = 0;
  parseArg(argc, argv);

  if (arguments.writeClients > 0) {
    writeData();
  } else {
    readData();
  }
}
