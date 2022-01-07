
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** we_wordv; } ;
typedef TYPE_1__ wordexp_t ;
struct stat {int dummy; } ;


 int mkdir (char*,int) ;
 int pPrint (char*,char*,char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcpy (char*,int *) ;
 int wordexp (char*,TYPE_1__*,int ) ;
 int wordfree (TYPE_1__*) ;

void tsExpandFilePath(char* option_name, char* input_value) {
  wordexp_t full_path;
  wordexp(input_value, &full_path, 0);
  if (full_path.we_wordv != ((void*)0) && full_path.we_wordv[0] != ((void*)0)) {
    strcpy(input_value, full_path.we_wordv[0]);
  }
  wordfree(&full_path);

  struct stat dirstat;
  if (stat(input_value, &dirstat) < 0) {
    int code = mkdir(input_value, 0755);
    pPrint("config option:%s, input value:%s, directory not exist, create with return code:%d", option_name, input_value, code);
  }
}
