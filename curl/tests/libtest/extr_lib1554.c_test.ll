; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1554.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1554.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"curl_share_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURLSHOPT_SHARE = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_CONNECT = common dso_local global i32 0, align 4
@CURLSHOPT_LOCKFUNC = common dso_local global i32 0, align 4
@my_lock = common dso_local global i32 0, align 4
@CURLSHOPT_UNLOCKFUNC = common dso_local global i32 0, align 4
@my_unlock = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_SHARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %10 = call i32 @global_init(i32 %9)
  %11 = call i8* (...) @curl_share_init()
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @curl_global_cleanup()
  %18 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %18, i32* %2, align 4
  br label %69

19:                                               ; preds = %1
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %22 = load i32, i32* @CURL_LOCK_DATA_CONNECT, align 4
  %23 = call i32 @curl_share_setopt(i8* %20, i32 %21, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @CURLSHOPT_LOCKFUNC, align 4
  %26 = load i32, i32* @my_lock, align 4
  %27 = call i32 @curl_share_setopt(i8* %24, i32 %25, i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @CURLSHOPT_UNLOCKFUNC, align 4
  %30 = load i32, i32* @my_unlock, align 4
  %31 = call i32 @curl_share_setopt(i8* %28, i32 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %62, %19
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %65

35:                                               ; preds = %32
  %36 = call i32* (...) @curl_easy_init()
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @CURLOPT_URL, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @curl_easy_setopt(i32* %40, i32 %41, i8* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @CURLOPT_SHARE, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @curl_easy_setopt(i32* %44, i32 %45, i8* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i64 @curl_easy_perform(i32* %48)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @CURLE_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %39
  %54 = load i32, i32* @stderr, align 4
  %55 = load i64, i64* %4, align 8
  %56 = call i8* @curl_easy_strerror(i64 %55)
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %53, %39
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @curl_easy_cleanup(i32* %59)
  br label %61

61:                                               ; preds = %58, %35
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @curl_share_cleanup(i8* %66)
  %68 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @global_init(i32) #1

declare dso_local i8* @curl_share_init(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @curl_share_setopt(i8*, i32, i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_share_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
