; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib573.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib573.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i64, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@libtest_debug_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CURLOPT_DEBUGDATA = common dso_local global i32 0, align 4
@CURLOPT_DEBUGFUNCTION = common dso_local global i32 0, align 4
@libtest_debug_cb = common dso_local global i64 0, align 8
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLINFO_CONNECT_TIME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"connect time %e is < epsilon %e\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store double 0.000000e+00, double* %7, align 8
  store double 1.000000e+00, double* %8, align 8
  br label %14

14:                                               ; preds = %17, %1
  %15 = load double, double* %8, align 8
  %16 = fdiv double %15, 2.000000e+00
  store double %16, double* %8, align 8
  br label %17

17:                                               ; preds = %14
  %18 = load double, double* %8, align 8
  %19 = fdiv double %18, 2.000000e+00
  %20 = fadd double 1.000000e+00, %19
  %21 = fcmp ogt double %20, 1.000000e+00
  br i1 %21, label %14, label %22

22:                                               ; preds = %17
  %23 = call i32 (...) @start_test_timing()
  %24 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %25 = call i32 @global_init(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @easy_init(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @CURLOPT_HEADER, align 4
  %30 = call i32 (i32*, i32, ...) @easy_setopt(i32* %28, i32 %29, i64 1)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @CURLOPT_URL, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 (i32*, i32, ...) @easy_setopt(i32* %31, i32 %32, i8* %33)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @libtest_debug_config, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @libtest_debug_config, i32 0, i32 1), align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @CURLOPT_DEBUGDATA, align 4
  %37 = call i32 (i32*, i32, ...) @easy_setopt(i32* %35, i32 %36, %struct.TYPE_2__* @libtest_debug_config)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @CURLOPT_DEBUGFUNCTION, align 4
  %40 = load i64, i64* @libtest_debug_cb, align 8
  %41 = call i32 (i32*, i32, ...) @easy_setopt(i32* %38, i32 %39, i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %44 = call i32 (i32*, i32, ...) @easy_setopt(i32* %42, i32 %43, i64 1)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @multi_init(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @multi_add_handle(i32* %47, i32* %48)
  br label %50

50:                                               ; preds = %62, %22
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  store i32 -99, i32* %13, align 4
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 100000, i64* %55, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @multi_perform(i32* %56, i32* %6)
  %58 = call i32 (...) @abort_on_test_timeout()
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %72

62:                                               ; preds = %53
  %63 = call i32 @FD_ZERO(i32* %10)
  %64 = call i32 @FD_ZERO(i32* %11)
  %65 = call i32 @FD_ZERO(i32* %12)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @multi_fdset(i32* %66, i32* %10, i32* %11, i32* %12, i32* %13)
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @select_test(i32 %69, i32* %10, i32* %11, i32* %12, %struct.timeval* %9)
  %71 = call i32 (...) @abort_on_test_timeout()
  br label %50

72:                                               ; preds = %61, %50
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @CURLINFO_CONNECT_TIME, align 4
  %75 = call i32 @curl_easy_getinfo(i32* %73, i32 %74, double* %7)
  %76 = load double, double* %7, align 8
  %77 = load double, double* %8, align 8
  %78 = fcmp olt double %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @stderr, align 4
  %81 = load double, double* %7, align 8
  %82 = load double, double* %8, align 8
  %83 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), double %81, double %82)
  %84 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %72
  br label %86

86:                                               ; preds = %85
  %87 = load i32*, i32** %4, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @curl_multi_remove_handle(i32* %87, i32* %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @curl_multi_cleanup(i32* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @curl_easy_cleanup(i32* %92)
  %94 = call i32 (...) @curl_global_cleanup()
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, double*) #1

declare dso_local i32 @fprintf(i32, i8*, double, double) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
