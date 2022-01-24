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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ccv_array_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static ccv_array_t* FUNC8(char* filename)
{
	FILE* r = FUNC2(filename, "rt");
	if(r)
	{
		ccv_array_t* words = FUNC0(sizeof(char*), 32, 0);
		size_t len = 1024;
		char* word = (char*)FUNC6(len);
		ssize_t read;
		while((read = FUNC4(&word, &len, r)) != -1)
		{
			while(read > 1 && FUNC5(word[read - 1]))
				read--;
			word[read] = 0;
			char* new_word = (char*)FUNC6(sizeof(char) * (read + 1));
			FUNC7(new_word, word, sizeof(char) * (read + 1));
			FUNC1(words, &new_word);
		}
		FUNC3(word);
		return words;
	}
	return 0;
}