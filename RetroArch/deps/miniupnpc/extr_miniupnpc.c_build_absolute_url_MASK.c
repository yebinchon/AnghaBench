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
typedef  int /*<<< orphan*/  scope_str ;

/* Variables and functions */
 int IF_NAMESIZE ; 
 scalar_t__ FUNC0 (unsigned int,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*,int,char*,unsigned int) ; 
 char* FUNC6 (char const*,char) ; 
 char* FUNC7 (char const*) ; 
 int FUNC8 (char const*) ; 

__attribute__((used)) static char *
FUNC9(const char * baseurl, const char * descURL,
                   const char * url, unsigned int scope_id)
{
	int l, n;
	char * s;
	const char * base;
	char * p;
#if defined(IF_NAMESIZE) && !defined(_WIN32)
	char ifname[IF_NAMESIZE];
#else /* defined(IF_NAMESIZE) && !defined(_WIN32) */
	char scope_str[8];
#endif	/* defined(IF_NAMESIZE) && !defined(_WIN32) */

	if(  (url[0] == 'h')
	   &&(url[1] == 't')
	   &&(url[2] == 't')
	   &&(url[3] == 'p')
	   &&(url[4] == ':')
	   &&(url[5] == '/')
	   &&(url[6] == '/'))
		return FUNC7(url);
	base = (baseurl[0] == '\0') ? descURL : baseurl;
	n    = (int)FUNC8(base);
	if(n > 7) {
		p = (char*)FUNC6(base + 7, '/');
		if(p)
			n = (int)(p - base);
	}
	l = (int)(n + FUNC8(url) + 1);
	if(url[0] != '/')
		l++;
	if(scope_id != 0) {
#if defined(IF_NAMESIZE) && !defined(_WIN32)
		if(if_indextoname(scope_id, ifname)) {
			l += 3 + strlen(ifname);	/* 3 == strlen(%25) */
		}
#else /* defined(IF_NAMESIZE) && !defined(_WIN32) */
		/* under windows, scope is numerical */
		l += 3 + FUNC5(scope_str, sizeof(scope_str), "%u", scope_id);
#endif /* defined(IF_NAMESIZE) && !defined(_WIN32) */
	}
	s = (char*)FUNC1(l);
	if(s == NULL) return NULL;
	FUNC3(s, base, n);
	if(scope_id != 0) {
		s[n] = '\0';
		if(0 == FUNC2(s, "http://[fe80:", 13)) {
			/* this is a linklocal IPv6 address */
			p = FUNC6(s, ']');
			if(p) {
				/* insert %25<scope> into URL */
#if defined(IF_NAMESIZE) && !defined(_WIN32)
				memmove(p + 3 + strlen(ifname), p, strlen(p) + 1);
				memcpy(p, "%25", 3);
				memcpy(p + 3, ifname, strlen(ifname));
				n += 3 + strlen(ifname);
#else /* defined(IF_NAMESIZE) && !defined(_WIN32) */
				FUNC4(p + 3 + FUNC8(scope_str), p, FUNC8(p) + 1);
				FUNC3(p, "%25", 3);
				FUNC3(p + 3, scope_str, FUNC8(scope_str));
				n += 3 + FUNC8(scope_str);
#endif /* defined(IF_NAMESIZE) && !defined(_WIN32) */
			}
		}
	}
	if(url[0] != '/')
		s[n++] = '/';
	FUNC3(s + n, url, l - n);
	return s;
}