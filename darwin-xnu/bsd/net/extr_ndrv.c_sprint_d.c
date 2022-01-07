
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int IFNAMSIZ ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void
sprint_d(u_int n, char *buf, int buflen)
{ char dbuf[IFNAMSIZ];
 char *cp = dbuf+IFNAMSIZ-1;

        *cp = 0;
        do { buflen--;
  cp--;
                *cp = "0123456789"[n % 10];
                n /= 10;
        } while (n != 0 && buflen > 0);
 strlcpy(buf, cp, IFNAMSIZ-buflen);
        return;
}
