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
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,unsigned char const*,int,unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void FUNC6(unsigned char *label, int label_len, const unsigned char *sec,
				  int slen, unsigned char *out1, int olen)
{
	const EVP_MD *md5 = FUNC0();
	const EVP_MD *sha1 = FUNC1();
	int len,i;
	const unsigned char *S1,*S2;
	unsigned char *out2;

	out2 = (unsigned char *) FUNC4 (olen);

	len=slen/2;
	S1=sec;
	S2= &(sec[len]);
	len+=(slen&1); /* add for odd, make longer */


	FUNC2(md5 ,S1,len,label,label_len,out1,olen);
	FUNC2(sha1,S2,len,label,label_len,out2,olen);

	for (i=0; i<olen; i++)
		out1[i]^=out2[i];

	FUNC5 (out2, 0, olen);
	FUNC3(out2);
}