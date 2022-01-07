; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib543.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib543.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test.a = internal constant [20 x i8] c"\9C&K=I\04\A1\01\E0\D8| \B7\EFS)\FA\1DW\E1", align 16
@CURLE_OK = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @CURLE_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %11 = call i32 @global_init(i32 %10)
  %12 = call i32* (...) @curl_easy_init()
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %1
  store i32 20, i32* %5, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @curl_easy_escape(i32* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test.a, i64 0, i64 0), i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @curl_free(i8* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @curl_easy_cleanup(i32* %35)
  %37 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @curl_easy_escape(i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @curl_free(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
