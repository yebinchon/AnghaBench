
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COM_MatchToken (char**,char*) ;
 char* COM_Parse (char**) ;
 float atof (char*) ;

void Parse1DMatrix (char **buf_p, int x, float *m) {
 char *token;
 int i;

 COM_MatchToken( buf_p, "(" );

 for (i = 0 ; i < x ; i++) {
  token = COM_Parse(buf_p);
  m[i] = atof(token);
 }

 COM_MatchToken( buf_p, ")" );
}
