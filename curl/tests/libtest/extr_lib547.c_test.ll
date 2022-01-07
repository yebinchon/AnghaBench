; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib547.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib547.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_IOCTLFUNCTION = common dso_local global i32 0, align 4
@ioctlcallback = common dso_local global i64 0, align 8
@CURLOPT_IOCTLDATA = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@readcallback = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDSIZE = common dso_local global i32 0, align 4
@UPLOADTHIS = common dso_local global i64 0, align 8
@CURLOPT_POST = common dso_local global i32 0, align 4
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_PROXYUSERPWD = common dso_local global i32 0, align 4
@libtest_arg3 = common dso_local global i64 0, align 8
@CURLOPT_PROXYAUTH = common dso_local global i32 0, align 4
@CURLAUTH_NTLM = common dso_local global i32 0, align 4
@CURLAUTH_DIGEST = common dso_local global i32 0, align 4
@CURLAUTH_BASIC = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %8 = call i64 @curl_global_init(i32 %7)
  %9 = load i64, i64* @CURLE_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = call i32* (...) @curl_easy_init()
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (...) @curl_global_cleanup()
  %23 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %23, i32* %2, align 4
  br label %82

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @CURLOPT_URL, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i32*, i32, ...) @test_setopt(i32* %25, i32 %26, i8* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %31 = call i32 (i32*, i32, ...) @test_setopt(i32* %29, i32 %30, i64 1)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @CURLOPT_HEADER, align 4
  %34 = call i32 (i32*, i32, ...) @test_setopt(i32* %32, i32 %33, i64 1)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @CURLOPT_IOCTLFUNCTION, align 4
  %37 = load i64, i64* @ioctlcallback, align 8
  %38 = call i32 (i32*, i32, ...) @test_setopt(i32* %35, i32 %36, i64 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @CURLOPT_IOCTLDATA, align 4
  %41 = call i32 (i32*, i32, ...) @test_setopt(i32* %39, i32 %40, i32* %6)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %44 = load i64, i64* @readcallback, align 8
  %45 = call i32 (i32*, i32, ...) @test_setopt(i32* %42, i32 %43, i64 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @CURLOPT_READDATA, align 4
  %48 = call i32 (i32*, i32, ...) @test_setopt(i32* %46, i32 %47, i32* %6)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @CURLOPT_POSTFIELDSIZE, align 4
  %51 = load i64, i64* @UPLOADTHIS, align 8
  %52 = call i64 @strlen(i64 %51)
  %53 = call i32 (i32*, i32, ...) @test_setopt(i32* %49, i32 %50, i64 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @CURLOPT_POST, align 4
  %56 = call i32 (i32*, i32, ...) @test_setopt(i32* %54, i32 %55, i64 1)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @CURLOPT_PROXY, align 4
  %59 = load i64, i64* @libtest_arg2, align 8
  %60 = call i32 (i32*, i32, ...) @test_setopt(i32* %57, i32 %58, i64 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @CURLOPT_PROXYUSERPWD, align 4
  %63 = load i64, i64* @libtest_arg3, align 8
  %64 = call i32 (i32*, i32, ...) @test_setopt(i32* %61, i32 %62, i64 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @CURLOPT_PROXYAUTH, align 4
  %67 = load i32, i32* @CURLAUTH_NTLM, align 4
  %68 = load i32, i32* @CURLAUTH_DIGEST, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CURLAUTH_BASIC, align 4
  %71 = or i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = call i32 (i32*, i32, ...) @test_setopt(i32* %65, i32 %66, i64 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = call i64 @curl_easy_perform(i32* %74)
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %24
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @curl_easy_cleanup(i32* %77)
  %79 = call i32 (...) @curl_global_cleanup()
  %80 = load i64, i64* %4, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %76, %19, %11
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
