
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_state_t ;
typedef int FILE ;


 char EOF ;





 int exit (int) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 char getc_unlocked (int *) ;
 int isspace (char) ;
 int perror (char*) ;
 int putchar_unlocked (char) ;
 int stderr ;
 int usage (char**) ;

int main(int argc, char **argv)
{
 FILE *fp;
 char bufchar;
 input_state_t input_state = 130;
 int exit_code = 0;
 int remove_whitespace = 0;
 int arg;

 if(argc < 2)
  usage(argv);
 for(arg=2; arg<argc; arg++) {
  switch(argv[arg][0]) {
      case 'r':
       remove_whitespace++;
   break;
      default:
       usage(argv);
  }
 }

 fp = fopen(argv[1], "r");
 if(!fp) {
  fprintf(stderr, "Error opening %s\n", argv[1]);
  perror("fopen");
  exit(1);
 }
 for(;;) {
  bufchar = getc_unlocked(fp);
  if (bufchar == EOF)
   break;

  switch(input_state) {

      case 130:
       if(bufchar == '/') {



    input_state = 129;
   }
   else {
    if(!(remove_whitespace && isspace(bufchar))) {
     putchar_unlocked(bufchar);
    }
   }
   break;

      case 129:
       switch(bufchar) {
       case '*':



    input_state = 132;
    break;

       case '/':



    input_state = 131;
    break;

       default:






    putchar_unlocked('/');
    if(!(remove_whitespace && isspace(bufchar))) {
     putchar_unlocked(bufchar);
    }
    input_state = 130;
    break;
   }
   break;

      case 132:
       if(bufchar == '*') {



        input_state = 128;
   }
       break;


      case 128:
       switch(bufchar) {
       case '/':



    input_state = 130;
    break;

       case '*':




    break;

       default:



    input_state = 132;
    break;
   }
   break;

      case 131:
       if(bufchar == '\n') {




    if(!remove_whitespace) {
     putchar_unlocked(bufchar);
    }
    input_state = 130;
   }
   break;

  }
 }




 return(exit_code);
}
