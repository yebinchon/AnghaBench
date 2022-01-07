; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib507.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib507.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i32, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = call i32 (...) @start_test_timing()
  %15 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %16 = call i32 @global_init(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @multi_init(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @easy_init(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @CURLOPT_URL, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (i32*, i32, ...) @easy_setopt(i32* %21, i32 %22, i8* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @CURLOPT_HEADER, align 4
  %27 = call i32 (i32*, i32, ...) @easy_setopt(i32* %25, i32 %26, i64 1)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @multi_add_handle(i32* %28, i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @multi_perform(i32* %31, i32* %5)
  %33 = call i32 (...) @abort_on_test_timeout()
  br label %34

34:                                               ; preds = %37, %1
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  store i32 -99, i32* %13, align 4
  %38 = call i32 @FD_ZERO(i32* %10)
  %39 = call i32 @FD_ZERO(i32* %11)
  %40 = call i32 @FD_ZERO(i32* %12)
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @multi_fdset(i32* %43, i32* %10, i32* %11, i32* %12, i32* %13)
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @select_test(i32 %46, i32* %10, i32* %11, i32* %12, %struct.timeval* %9)
  %48 = call i32 (...) @abort_on_test_timeout()
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @multi_perform(i32* %49, i32* %5)
  %51 = call i32 (...) @abort_on_test_timeout()
  br label %34

52:                                               ; preds = %34
  %53 = load i32*, i32** %4, align 8
  %54 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %53, i32* %5)
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %8, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @curl_multi_cleanup(i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @curl_easy_cleanup(i32* %66)
  %68 = call i32 (...) @curl_global_cleanup()
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %63
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
