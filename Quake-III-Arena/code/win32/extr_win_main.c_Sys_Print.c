
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Conbuf_AppendText (char const*) ;

void Sys_Print( const char *msg ) {
 Conbuf_AppendText( msg );
}
