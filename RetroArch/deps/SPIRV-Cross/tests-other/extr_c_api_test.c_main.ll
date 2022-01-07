; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/SPIRV-Cross/tests-other/extr_c_api_test.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/SPIRV-Cross/tests-other/extr_c_api_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Revision: %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"VERSION_MAJOR mismatch!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"VERSION_MINOR mismatch!\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"VERSION_PATCH mismatch!\0A\00", align 1
@error_callback = common dso_local global i32 0, align 4
@SPVC_BACKEND_GLSL = common dso_local global i32 0, align 4
@SPVC_CAPTURE_MODE_COPY = common dso_local global i32 0, align 4
@SPVC_BACKEND_HLSL = common dso_local global i32 0, align 4
@SPVC_BACKEND_MSL = common dso_local global i32 0, align 4
@SPVC_BACKEND_CPP = common dso_local global i32 0, align 4
@SPVC_BACKEND_JSON = common dso_local global i32 0, align 4
@SPVC_BACKEND_NONE = common dso_local global i32 0, align 4
@SPVC_CAPTURE_MODE_TAKE_OWNERSHIP = common dso_local global i32 0, align 4
@SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL = common dso_local global i32 0, align 4
@SPVC_COMPILER_OPTION_MSL_PLATFORM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"GLSL\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HLSL\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"MSL\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"JSON\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"CPP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i64 0, i64* %18, align 8
  %22 = call i8* (...) @spvc_get_commit_revision_and_timestamp()
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %2
  store i32 1, i32* %3, align 4
  br label %192

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %192

37:                                               ; preds = %31
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @read_file(i8* %40, i32** %17, i64* %18)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %192

44:                                               ; preds = %37
  %45 = call i32 @spvc_get_version(i32* %19, i32* %20, i32* %21)
  %46 = load i32, i32* %19, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strtoul(i8* %49, i32* null, i32 0)
  %51 = icmp ne i32 %46, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %192

55:                                               ; preds = %44
  %56 = load i32, i32* %20, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strtoul(i8* %59, i32* null, i32 0)
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %192

65:                                               ; preds = %55
  %66 = load i32, i32* %21, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 4
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strtoul(i8* %69, i32* null, i32 0)
  %71 = icmp ne i32 %66, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %192

75:                                               ; preds = %65
  %76 = call i32 @spvc_context_create(i32** %7)
  %77 = call i32 @SPVC_CHECKED_CALL(i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @error_callback, align 4
  %80 = call i32 @spvc_context_set_error_callback(i32* %78, i32 %79, i32* null)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = load i64, i64* %18, align 8
  %84 = call i32 @spvc_context_parse_spirv(i32* %81, i32* %82, i64 %83, i32** %8)
  %85 = call i32 @SPVC_CHECKED_CALL(i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* @SPVC_BACKEND_GLSL, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* @SPVC_CAPTURE_MODE_COPY, align 4
  %90 = call i32 @spvc_context_create_compiler(i32* %86, i32 %87, i32* %88, i32 %89, i32** %9)
  %91 = call i32 @SPVC_CHECKED_CALL(i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* @SPVC_BACKEND_HLSL, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* @SPVC_CAPTURE_MODE_COPY, align 4
  %96 = call i32 @spvc_context_create_compiler(i32* %92, i32 %93, i32* %94, i32 %95, i32** %10)
  %97 = call i32 @SPVC_CHECKED_CALL(i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* @SPVC_BACKEND_MSL, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @SPVC_CAPTURE_MODE_COPY, align 4
  %102 = call i32 @spvc_context_create_compiler(i32* %98, i32 %99, i32* %100, i32 %101, i32** %11)
  %103 = call i32 @SPVC_CHECKED_CALL(i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @SPVC_BACKEND_CPP, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* @SPVC_CAPTURE_MODE_COPY, align 4
  %108 = call i32 @spvc_context_create_compiler(i32* %104, i32 %105, i32* %106, i32 %107, i32** %12)
  %109 = call i32 @SPVC_CHECKED_CALL(i32 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* @SPVC_BACKEND_JSON, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* @SPVC_CAPTURE_MODE_COPY, align 4
  %114 = call i32 @spvc_context_create_compiler(i32* %110, i32 %111, i32* %112, i32 %113, i32** %13)
  %115 = call i32 @SPVC_CHECKED_CALL(i32 %114)
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* @SPVC_BACKEND_NONE, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* @SPVC_CAPTURE_MODE_TAKE_OWNERSHIP, align 4
  %120 = call i32 @spvc_context_create_compiler(i32* %116, i32 %117, i32* %118, i32 %119, i32** %14)
  %121 = call i32 @SPVC_CHECKED_CALL(i32 %120)
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @spvc_compiler_create_compiler_options(i32* %122, i32** %15)
  %124 = call i32 @SPVC_CHECKED_CALL(i32 %123)
  %125 = load i32*, i32** %14, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @spvc_compiler_install_compiler_options(i32* %125, i32* %126)
  %128 = call i32 @SPVC_CHECKED_CALL(i32 %127)
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @spvc_compiler_create_compiler_options(i32* %129, i32** %15)
  %131 = call i32 @SPVC_CHECKED_CALL(i32 %130)
  %132 = load i32*, i32** %13, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = call i32 @spvc_compiler_install_compiler_options(i32* %132, i32* %133)
  %135 = call i32 @SPVC_CHECKED_CALL(i32 %134)
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @spvc_compiler_create_compiler_options(i32* %136, i32** %15)
  %138 = call i32 @SPVC_CHECKED_CALL(i32 %137)
  %139 = load i32*, i32** %12, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @spvc_compiler_install_compiler_options(i32* %139, i32* %140)
  %142 = call i32 @SPVC_CHECKED_CALL(i32 %141)
  %143 = load i32*, i32** %11, align 8
  %144 = call i32 @spvc_compiler_create_compiler_options(i32* %143, i32** %15)
  %145 = call i32 @SPVC_CHECKED_CALL(i32 %144)
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = call i32 @spvc_compiler_install_compiler_options(i32* %146, i32* %147)
  %149 = call i32 @SPVC_CHECKED_CALL(i32 %148)
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @spvc_compiler_create_compiler_options(i32* %150, i32** %15)
  %152 = call i32 @SPVC_CHECKED_CALL(i32 %151)
  %153 = load i32*, i32** %15, align 8
  %154 = load i32, i32* @SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL, align 4
  %155 = call i32 @spvc_compiler_options_set_uint(i32* %153, i32 %154, i32 50)
  %156 = call i32 @SPVC_CHECKED_CALL(i32 %155)
  %157 = load i32*, i32** %15, align 8
  %158 = load i32, i32* @SPVC_COMPILER_OPTION_MSL_PLATFORM, align 4
  %159 = call i32 @spvc_compiler_options_set_uint(i32* %157, i32 %158, i32 1)
  %160 = call i32 @SPVC_CHECKED_CALL_NEGATIVE(i32 %159)
  %161 = load i32*, i32** %10, align 8
  %162 = load i32*, i32** %15, align 8
  %163 = call i32 @spvc_compiler_install_compiler_options(i32* %161, i32* %162)
  %164 = call i32 @SPVC_CHECKED_CALL(i32 %163)
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @spvc_compiler_create_compiler_options(i32* %165, i32** %15)
  %167 = call i32 @SPVC_CHECKED_CALL(i32 %166)
  %168 = load i32*, i32** %9, align 8
  %169 = load i32*, i32** %15, align 8
  %170 = call i32 @spvc_compiler_install_compiler_options(i32* %168, i32* %169)
  %171 = call i32 @SPVC_CHECKED_CALL(i32 %170)
  %172 = load i32*, i32** %14, align 8
  %173 = call i32 @spvc_compiler_create_shader_resources(i32* %172, i32** %16)
  %174 = call i32 @SPVC_CHECKED_CALL(i32 %173)
  %175 = load i32*, i32** %14, align 8
  %176 = load i32*, i32** %16, align 8
  %177 = call i32 @dump_resources(i32* %175, i32* %176)
  %178 = load i32*, i32** %9, align 8
  %179 = call i32 @compile(i32* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %180 = load i32*, i32** %10, align 8
  %181 = call i32 @compile(i32* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 @compile(i32* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %184 = load i32*, i32** %13, align 8
  %185 = call i32 @compile(i32* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %186 = load i32*, i32** %12, align 8
  %187 = call i32 @compile(i32* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %188 = load i32*, i32** %7, align 8
  %189 = call i32 @spvc_context_destroy(i32* %188)
  %190 = load i32*, i32** %17, align 8
  %191 = call i32 @free(i32* %190)
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %75, %72, %62, %52, %43, %36, %30
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i8* @spvc_get_commit_revision_and_timestamp(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @read_file(i8*, i32**, i64*) #1

declare dso_local i32 @spvc_get_version(i32*, i32*, i32*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @SPVC_CHECKED_CALL(i32) #1

declare dso_local i32 @spvc_context_create(i32**) #1

declare dso_local i32 @spvc_context_set_error_callback(i32*, i32, i32*) #1

declare dso_local i32 @spvc_context_parse_spirv(i32*, i32*, i64, i32**) #1

declare dso_local i32 @spvc_context_create_compiler(i32*, i32, i32*, i32, i32**) #1

declare dso_local i32 @spvc_compiler_create_compiler_options(i32*, i32**) #1

declare dso_local i32 @spvc_compiler_install_compiler_options(i32*, i32*) #1

declare dso_local i32 @spvc_compiler_options_set_uint(i32*, i32, i32) #1

declare dso_local i32 @SPVC_CHECKED_CALL_NEGATIVE(i32) #1

declare dso_local i32 @spvc_compiler_create_shader_resources(i32*, i32**) #1

declare dso_local i32 @dump_resources(i32*, i32*) #1

declare dso_local i32 @compile(i32*, i8*) #1

declare dso_local i32 @spvc_context_destroy(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
