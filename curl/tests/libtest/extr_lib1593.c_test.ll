; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1593.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1593.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_TIMECONDITION = common dso_local global i32 0, align 4
@CURL_TIMECOND_IFMODSINCE = common dso_local global i64 0, align 8
@CURLOPT_TIMEVALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"If-Modified-Since:\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLINFO_CONDITION_UNMET = common dso_local global i32 0, align 4
@TEST_ERR_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.curl_slist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %3, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %8 = call i32 @global_init(i32 %7)
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @easy_init(i32* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @CURLOPT_URL, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 (i32*, i32, ...) @easy_setopt(i32* %11, i32 %12, i8* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @CURLOPT_TIMECONDITION, align 4
  %17 = load i64, i64* @CURL_TIMECOND_IFMODSINCE, align 8
  %18 = call i32 (i32*, i32, ...) @easy_setopt(i32* %15, i32 %16, i64 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @CURLOPT_TIMEVALUE, align 4
  %21 = call i32 (i32*, i32, ...) @easy_setopt(i32* %19, i32 %20, i64 1566210680)
  %22 = call i8* @curl_slist_append(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = bitcast i8* %22 to %struct.curl_slist*
  store %struct.curl_slist* %23, %struct.curl_slist** %3, align 8
  %24 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %25 = icmp ne %struct.curl_slist* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %27, i32* %6, align 4
  br label %51

28:                                               ; preds = %1
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %31 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %32 = call i32 (i32*, i32, ...) @easy_setopt(i32* %29, i32 %30, %struct.curl_slist* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @curl_easy_perform(i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %51

38:                                               ; preds = %28
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @CURLINFO_CONDITION_UNMET, align 4
  %41 = call i32 @curl_easy_getinfo(i32* %39, i32 %40, i64* %4)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %51

45:                                               ; preds = %38
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @TEST_ERR_FAILURE, align 4
  store i32 %49, i32* %6, align 4
  br label %51

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %48, %44, %37, %26
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @curl_easy_cleanup(i32* %52)
  %54 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %55 = bitcast %struct.curl_slist* %54 to i8*
  %56 = call i32 @curl_slist_free_all(i8* %55)
  %57 = call i32 (...) @curl_global_cleanup()
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i8* @curl_slist_append(i32*, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, i64*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
