; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1518.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1518.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_FOLLOWLOCATION = common dso_local global i32 0, align 4
@CURLINFO_RESPONSE_CODE = common dso_local global i32 0, align 4
@CURLINFO_REDIRECT_COUNT = common dso_local global i32 0, align 4
@CURLINFO_EFFECTIVE_URL = common dso_local global i32 0, align 4
@CURLINFO_REDIRECT_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"res: %d\0Astatus: %d\0Aredirects: %d\0Aeffectiveurl: %s\0Aredirecturl: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @CURLE_OK, align 4
  store i32 %10, i32* %5, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = call i32* (...) @curl_easy_init()
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @curl_global_cleanup()
  %18 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @CURLOPT_URL, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i32*, i32, ...) @test_setopt(i32* %20, i32 %21, i8* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @CURLOPT_FOLLOWLOCATION, align 4
  %26 = call i32 (i32*, i32, ...) @test_setopt(i32* %24, i32 %25, i64 0)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @curl_easy_perform(i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @CURLINFO_RESPONSE_CODE, align 4
  %31 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %29, i32 %30, i64* %6)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @CURLINFO_REDIRECT_COUNT, align 4
  %34 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %32, i32 %33, i64* %7)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @CURLINFO_EFFECTIVE_URL, align 4
  %37 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %35, i32 %36, i8** %8)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @CURLINFO_REDIRECT_URL, align 4
  %40 = call i32 (i32*, i32, ...) @curl_easy_getinfo(i32* %38, i32 %39, i8** %9)
  %41 = load i32, i32* %5, align 4
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %43, i32 %45, i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %19
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @curl_easy_cleanup(i32* %50)
  %52 = call i32 (...) @curl_global_cleanup()
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, ...) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
