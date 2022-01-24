#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct callback_data {char const* nullvalue; char const* separator; int /*<<< orphan*/ * out; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 scalar_t__* needCsvQuote ; 
 int /*<<< orphan*/  FUNC2 (char const,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(struct callback_data *p, const char *z, int bSep){
  FILE *out = p->out;
  if( z==0 ){
    FUNC0(out,"%s",p->nullvalue);
  }else{
    int i;
    int nSep = FUNC3(p->separator);
    for(i=0; z[i]; i++){
      if( needCsvQuote[((unsigned char*)z)[i]] 
         || (z[i]==p->separator[0] && 
             (nSep==1 || FUNC1(z, p->separator, nSep)==0)) ){
        i = 0;
        break;
      }
    }
    if( i==0 ){
      FUNC2('"', out);
      for(i=0; z[i]; i++){
        if( z[i]=='"' ) FUNC2('"', out);
        FUNC2(z[i], out);
      }
      FUNC2('"', out);
    }else{
      FUNC0(out, "%s", z);
    }
  }
  if( bSep ){
    FUNC0(p->out, "%s", p->separator);
  }
}