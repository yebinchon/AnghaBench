
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errorConf ;


 int CFG_LANGUAGE_EN ;
 int ERROR_TEXT ;
 int errorDisp (int *) ;
 int errorInit (int *,int ,int ) ;
 int errorText (int *,char const*) ;
 int exit (int ) ;

__attribute__((used)) static void errorAndQuit(const char* errorStr){
 errorConf error;

 errorInit(&error, ERROR_TEXT, CFG_LANGUAGE_EN);
 errorText(&error, errorStr);
 errorDisp(&error);
 exit(0);
}
