; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1905.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1905.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@CURLSHOPT_SHARE = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_COOKIE = common dso_local global i32 0, align 4
@CURLOPT_SHARE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_COOKIEFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"log/cookies1905\00", align 1
@CURLOPT_COOKIEJAR = common dso_local global i32 0, align 4
@CURLOPT_COOKIELIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"FLUSH\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %14 = call i32* (...) @curl_multi_init()
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %102

18:                                               ; preds = %1
  %19 = call i8* (...) @curl_share_init()
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %94

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %26 = load i32, i32* @CURL_LOCK_DATA_COOKIE, align 4
  %27 = call i32 @curl_share_setopt(i8* %24, i32 %25, i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %30 = load i32, i32* @CURL_LOCK_DATA_COOKIE, align 4
  %31 = call i32 @curl_share_setopt(i8* %28, i32 %29, i32 %30)
  %32 = call i32* (...) @curl_easy_init()
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %94

36:                                               ; preds = %23
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @CURLOPT_SHARE, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @curl_easy_setopt(i32* %37, i32 %38, i8* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @CURLOPT_URL, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @curl_easy_setopt(i32* %41, i32 %42, i8* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @CURLOPT_COOKIEFILE, align 4
  %47 = call i32 @curl_easy_setopt(i32* %45, i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @CURLOPT_COOKIEJAR, align 4
  %50 = call i32 @curl_easy_setopt(i32* %48, i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @curl_multi_add_handle(i32* %51, i32* %52)
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %80, %36
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  %58 = call i32 @FD_ZERO(i32* %10)
  %59 = call i32 @FD_ZERO(i32* %11)
  %60 = call i32 @FD_ZERO(i32* %12)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @curl_multi_perform(i32* %61, i32* %6)
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @curl_multi_fdset(i32* %63, i32* %10, i32* %11, i32* %12, i32* %8)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @curl_multi_timeout(i32* %65, i64* %9)
  %67 = load i64, i64* %9, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %57
  %70 = load i64, i64* %9, align 8
  %71 = sdiv i64 %70, 1000
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = load i64, i64* %9, align 8
  %74 = srem i64 %73, 1000
  %75 = mul nsw i64 %74, 1000
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 %75, i64* %76, align 8
  br label %80

77:                                               ; preds = %57
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 1000, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %69
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @select(i32 %82, i32* %10, i32* %11, i32* %12, %struct.timeval* %13)
  br label %54

84:                                               ; preds = %54
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @CURLOPT_COOKIELIST, align 4
  %87 = call i32 @curl_easy_setopt(i32* %85, i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* @CURLOPT_SHARE, align 4
  %90 = call i32 @curl_easy_setopt(i32* %88, i32 %89, i8* null)
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @curl_multi_remove_handle(i32* %91, i32* %92)
  br label %94

94:                                               ; preds = %84, %35, %22
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @curl_easy_cleanup(i32* %95)
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @curl_share_cleanup(i8* %97)
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @curl_multi_cleanup(i32* %99)
  %101 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %94, %17
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i8* @curl_share_init(...) #1

declare dso_local i32 @curl_share_setopt(i8*, i32, i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @curl_multi_add_handle(i32*, i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @curl_multi_perform(i32*, i32*) #1

declare dso_local i32 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_share_cleanup(i8*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
