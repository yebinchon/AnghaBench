; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1540.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1540.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transfer_status = type { i32* }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@write_callback = common dso_local global i64 0, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_HEADERFUNCTION = common dso_local global i32 0, align 4
@header_callback = common dso_local global i64 0, align 8
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@CURLOPT_XFERINFOFUNCTION = common dso_local global i32 0, align 4
@please_continue = common dso_local global i64 0, align 8
@CURLOPT_XFERINFODATA = common dso_local global i32 0, align 4
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.transfer_status, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = call i32 (...) @start_test_timing()
  %8 = call i32 @memset(%struct.transfer_status* %6, i32 0, i32 8)
  %9 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %10 = call i32 @global_init(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @easy_init(i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds %struct.transfer_status, %struct.transfer_status* %6, i32 0, i32 0
  store i32* %13, i32** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @CURLOPT_URL, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (i32*, i32, ...) @easy_setopt(i32* %15, i32 %16, i8* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %21 = load i64, i64* @write_callback, align 8
  %22 = call i32 (i32*, i32, ...) @easy_setopt(i32* %19, i32 %20, i64 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %25 = call i32 (i32*, i32, ...) @easy_setopt(i32* %23, i32 %24, %struct.transfer_status* %6)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @CURLOPT_HEADERFUNCTION, align 4
  %28 = load i64, i64* @header_callback, align 8
  %29 = call i32 (i32*, i32, ...) @easy_setopt(i32* %26, i32 %27, i64 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %32 = call i32 (i32*, i32, ...) @easy_setopt(i32* %30, i32 %31, %struct.transfer_status* %6)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @CURLOPT_XFERINFOFUNCTION, align 4
  %35 = load i64, i64* @please_continue, align 8
  %36 = call i32 (i32*, i32, ...) @easy_setopt(i32* %33, i32 %34, i64 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @CURLOPT_XFERINFODATA, align 4
  %39 = call i32 (i32*, i32, ...) @easy_setopt(i32* %37, i32 %38, %struct.transfer_status* %6)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %42 = call i32 (i32*, i32, ...) @easy_setopt(i32* %40, i32 %41, i64 0)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @curl_easy_perform(i32* %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %1
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @curl_easy_cleanup(i32* %46)
  %48 = call i32 (...) @curl_global_cleanup()
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @memset(%struct.transfer_status*, i32, i32) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
