
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void COM_StripExtension( const char *in, char *out ) {
 while ( *in && *in != '.' ) {
  *out++ = *in++;
 }
 *out = 0;
}
