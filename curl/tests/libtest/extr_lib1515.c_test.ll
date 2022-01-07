; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1515.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1515.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libtest_arg2 = common dso_local global i8* null, align 8
@libtest_arg3 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"testserver.example.com:%s:%s\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"http://testserver.example.com:%s/%s%04d\00", align 1
@DNS_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load i8*, i8** @libtest_arg2, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** @libtest_arg3, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %2, align 8
  store i8* %14, i8** %7, align 8
  store i32 2, i32* %10, align 4
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @msnprintf(i8* %15, i32 256, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17)
  %19 = call i32 (...) @start_test_timing()
  %20 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %21 = call i32 @global_init(i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @multi_init(i32* %22)
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %50, %1
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @msnprintf(i8* %29, i32 256, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %37 = call i32 @do_one_request(i32* %34, i8* %35, i8* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %54

41:                                               ; preds = %28
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i64, i64* @DNS_TIMEOUT, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @sleep(i64 %47)
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %24

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @curl_multi_cleanup(i32* %55)
  %57 = call i32 (...) @curl_global_cleanup()
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @do_one_request(i32*, i8*, i8*) #1

declare dso_local i32 @sleep(i64) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
