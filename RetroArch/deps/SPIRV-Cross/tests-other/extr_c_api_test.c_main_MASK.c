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
typedef  int /*<<< orphan*/ * spvc_resources ;
typedef  int /*<<< orphan*/ * spvc_parsed_ir ;
typedef  int /*<<< orphan*/ * spvc_context ;
typedef  int /*<<< orphan*/ * spvc_compiler_options ;
typedef  int /*<<< orphan*/ * spvc_compiler ;
typedef  int /*<<< orphan*/  SpvId ;

/* Variables and functions */
 int /*<<< orphan*/  SPVC_BACKEND_CPP ; 
 int /*<<< orphan*/  SPVC_BACKEND_GLSL ; 
 int /*<<< orphan*/  SPVC_BACKEND_HLSL ; 
 int /*<<< orphan*/  SPVC_BACKEND_JSON ; 
 int /*<<< orphan*/  SPVC_BACKEND_MSL ; 
 int /*<<< orphan*/  SPVC_BACKEND_NONE ; 
 int /*<<< orphan*/  SPVC_CAPTURE_MODE_COPY ; 
 int /*<<< orphan*/  SPVC_CAPTURE_MODE_TAKE_OWNERSHIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL ; 
 int /*<<< orphan*/  SPVC_COMPILER_OPTION_MSL_PLATFORM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned int FUNC19 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC20(int argc, char **argv)
{
	const char *rev = NULL;

	spvc_context context = NULL;
	spvc_parsed_ir ir = NULL;
	spvc_compiler compiler_glsl = NULL;
	spvc_compiler compiler_hlsl = NULL;
	spvc_compiler compiler_msl = NULL;
	spvc_compiler compiler_cpp = NULL;
	spvc_compiler compiler_json = NULL;
	spvc_compiler compiler_none = NULL;
	spvc_compiler_options options = NULL;
	spvc_resources resources = NULL;
	SpvId *buffer = NULL;
	size_t word_count = 0;

	rev = FUNC17();
	if (!rev || *rev == '\0')
		return 1;

	FUNC6("Revision: %s\n", rev);

	if (argc != 5)
		return 1;

	if (FUNC7(argv[1], &buffer, &word_count) < 0)
		return 1;

	unsigned abi_major, abi_minor, abi_patch;
	FUNC18(&abi_major, &abi_minor, &abi_patch);
	if (abi_major != FUNC19(argv[2], NULL, 0))
	{
		FUNC4(stderr, "VERSION_MAJOR mismatch!\n");
		return 1;
	}

	if (abi_minor != FUNC19(argv[3], NULL, 0))
	{
		FUNC4(stderr, "VERSION_MINOR mismatch!\n");
		return 1;
	}

	if (abi_patch != FUNC19(argv[4], NULL, 0))
	{
		FUNC4(stderr, "VERSION_PATCH mismatch!\n");
		return 1;
	}

	FUNC0(FUNC12(&context));
	FUNC16(context, error_callback, NULL);
	FUNC0(FUNC15(context, buffer, word_count, &ir));
	FUNC0(FUNC13(context, SPVC_BACKEND_GLSL, ir, SPVC_CAPTURE_MODE_COPY, &compiler_glsl));
	FUNC0(FUNC13(context, SPVC_BACKEND_HLSL, ir, SPVC_CAPTURE_MODE_COPY, &compiler_hlsl));
	FUNC0(FUNC13(context, SPVC_BACKEND_MSL, ir, SPVC_CAPTURE_MODE_COPY, &compiler_msl));
	FUNC0(FUNC13(context, SPVC_BACKEND_CPP, ir, SPVC_CAPTURE_MODE_COPY, &compiler_cpp));
	FUNC0(FUNC13(context, SPVC_BACKEND_JSON, ir, SPVC_CAPTURE_MODE_COPY, &compiler_json));
	FUNC0(FUNC13(context, SPVC_BACKEND_NONE, ir, SPVC_CAPTURE_MODE_TAKE_OWNERSHIP, &compiler_none));

	FUNC0(FUNC8(compiler_none, &options));
	FUNC0(FUNC10(compiler_none, options));
	FUNC0(FUNC8(compiler_json, &options));
	FUNC0(FUNC10(compiler_json, options));
	FUNC0(FUNC8(compiler_cpp, &options));
	FUNC0(FUNC10(compiler_cpp, options));
	FUNC0(FUNC8(compiler_msl, &options));
	FUNC0(FUNC10(compiler_msl, options));
	FUNC0(FUNC8(compiler_hlsl, &options));
	FUNC0(FUNC11(options, SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL, 50));
	FUNC1(FUNC11(options, SPVC_COMPILER_OPTION_MSL_PLATFORM, 1));
	FUNC0(FUNC10(compiler_hlsl, options));
	FUNC0(FUNC8(compiler_glsl, &options));
	FUNC0(FUNC10(compiler_glsl, options));

	FUNC0(FUNC9(compiler_none, &resources));
	FUNC3(compiler_none, resources);
	FUNC2(compiler_glsl, "GLSL");
	FUNC2(compiler_hlsl, "HLSL");
	FUNC2(compiler_msl, "MSL");
	FUNC2(compiler_json, "JSON");
	FUNC2(compiler_cpp, "CPP");

	FUNC14(context);
	FUNC5(buffer);
	return 0;
}