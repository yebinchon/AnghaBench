
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interfaces; int argv; } ;


 int Seq_addhi (int ,int ) ;
 int Seq_new (int ) ;
 int Text_box (char*,scalar_t__) ;
 int _O_BINARY ;
 int _fileno (int ) ;
 int _setmode (int ,int ) ;
 int interfaces ;
 TYPE_1__* pickle ;
 TYPE_1__* rcc_program (int,int ,int ,int ,int,int ) ;
 int stdout ;
 scalar_t__ strlen (char*) ;
 int to_generic_string (int ) ;

__attribute__((used)) static void asdl_progbeg(int argc, char *argv[]) {
 int i;




 pickle = rcc_program(1, 0, Seq_new(0), Seq_new(0), argc, Seq_new(0));
 for (i = 0; i < argc; i++)
  Seq_addhi(pickle->argv, to_generic_string(Text_box(argv[i], strlen(argv[i]) + 1)));
 interfaces = pickle->interfaces;
}
