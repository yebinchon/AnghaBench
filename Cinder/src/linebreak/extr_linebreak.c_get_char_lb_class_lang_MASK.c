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
typedef  int /*<<< orphan*/  utf32_t ;
struct LineBreakProperties {int dummy; } ;
typedef  enum LineBreakClass { ____Placeholder_LineBreakClass } LineBreakClass ;

/* Variables and functions */
 int LBP_XX ; 
 int FUNC0 (int /*<<< orphan*/ ,struct LineBreakProperties*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum LineBreakClass FUNC2(
		utf32_t ch,
		struct LineBreakProperties *lbpLang)
{
	enum LineBreakClass lbcResult;

	/* Find the language-specific line breaking class for a character */
	if (lbpLang)
	{
		lbcResult = FUNC0(ch, lbpLang);
		if (lbcResult != LBP_XX)
			return lbcResult;
	}

	/* Find the generic language-specific line breaking class, if no
	 * language context is provided, or language-specific data are not
	 * available for the specific character in the specified language */
	return FUNC1(ch);
}