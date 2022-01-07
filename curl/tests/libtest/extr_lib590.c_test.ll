; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib590.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib590.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_PROXYAUTH = common dso_local global i32 0, align 4
@CURLAUTH_BASIC = common dso_local global i32 0, align 4
@CURLAUTH_DIGEST = common dso_local global i32 0, align 4
@CURLAUTH_NTLM = common dso_local global i32 0, align 4
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i8* null, align 8
@CURLOPT_PROXYUSERPWD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"me:password\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %7 = call i64 @curl_global_init(i32 %6)
  %8 = load i64, i64* @CURLE_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %13, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = call i32* (...) @curl_easy_init()
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 (...) @curl_global_cleanup()
  %22 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %22, i32* %2, align 4
  br label %55

23:                                               ; preds = %14
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @CURLOPT_URL, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i32*, i32, ...) @test_setopt(i32* %24, i32 %25, i8* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @CURLOPT_HEADER, align 4
  %30 = call i32 (i32*, i32, ...) @test_setopt(i32* %28, i32 %29, i64 1)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @CURLOPT_PROXYAUTH, align 4
  %33 = load i32, i32* @CURLAUTH_BASIC, align 4
  %34 = load i32, i32* @CURLAUTH_DIGEST, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CURLAUTH_NTLM, align 4
  %37 = or i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = call i32 (i32*, i32, ...) @test_setopt(i32* %31, i32 %32, i64 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @CURLOPT_PROXY, align 4
  %42 = load i8*, i8** @libtest_arg2, align 8
  %43 = call i32 (i32*, i32, ...) @test_setopt(i32* %40, i32 %41, i8* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @CURLOPT_PROXYUSERPWD, align 4
  %46 = call i32 (i32*, i32, ...) @test_setopt(i32* %44, i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @curl_easy_perform(i32* %47)
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %23
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @curl_easy_cleanup(i32* %50)
  %52 = call i32 (...) @curl_global_cleanup()
  %53 = load i64, i64* %4, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %18, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
