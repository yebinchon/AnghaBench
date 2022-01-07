; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1501.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1501.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ping\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pong = %ld\0A\00", align 1
@MAX_BLOCKED_TIME_MS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.timeval, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = call i32 (...) @start_test_timing()
  %18 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %19 = call i32 @global_init(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @easy_init(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @CURLOPT_URL, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 (i32*, i32, ...) @easy_setopt(i32* %22, i32 %23, i8* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %28 = call i32 (i32*, i32, ...) @easy_setopt(i32* %26, i32 %27, i64 1)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @multi_init(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @multi_add_handle(i32* %31, i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @multi_perform(i32* %34, i32* %6)
  %36 = call i32 (...) @abort_on_test_timeout()
  br label %37

37:                                               ; preds = %91, %1
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %92

40:                                               ; preds = %37
  store i32 -99, i32* %11, align 4
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 100000, i64* %42, align 8
  %43 = call i32 @FD_ZERO(i32* %8)
  %44 = call i32 @FD_ZERO(i32* %9)
  %45 = call i32 @FD_ZERO(i32* %10)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @multi_fdset(i32* %46, i32* %8, i32* %9, i32* %10, i32* %11)
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @select_test(i32 %49, i32* %8, i32* %9, i32* %10, %struct.timeval* %7)
  %51 = call i32 (...) @abort_on_test_timeout()
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %54 = call { i64, i64 } (...) @tutil_tvnow()
  %55 = bitcast %struct.timeval* %15 to { i64, i64 }*
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 0
  %57 = extractvalue { i64, i64 } %54, 0
  store i64 %57, i64* %56, align 8
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 1
  %59 = extractvalue { i64, i64 } %54, 1
  store i64 %59, i64* %58, align 8
  %60 = bitcast %struct.timeval* %12 to i8*
  %61 = bitcast %struct.timeval* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @multi_perform(i32* %62, i32* %6)
  %64 = call i32 (...) @abort_on_test_timeout()
  %65 = call { i64, i64 } (...) @tutil_tvnow()
  %66 = bitcast %struct.timeval* %16 to { i64, i64 }*
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %66, i32 0, i32 0
  %68 = extractvalue { i64, i64 } %65, 0
  store i64 %68, i64* %67, align 8
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %66, i32 0, i32 1
  %70 = extractvalue { i64, i64 } %65, 1
  store i64 %70, i64* %69, align 8
  %71 = bitcast %struct.timeval* %13 to i8*
  %72 = bitcast %struct.timeval* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 16, i1 false)
  %73 = bitcast %struct.timeval* %13 to { i64, i64 }*
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %73, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = bitcast %struct.timeval* %12 to { i64, i64 }*
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %78, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @tutil_tvdiff(i64 %75, i64 %77, i64 %80, i64 %82)
  store i64 %83, i64* %14, align 8
  %84 = load i32, i32* @stderr, align 4
  %85 = load i64, i64* %14, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @MAX_BLOCKED_TIME_MS, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %40
  store i32 100, i32* %5, align 4
  br label %92

91:                                               ; preds = %40
  br label %37

92:                                               ; preds = %90, %37
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @curl_multi_cleanup(i32* %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @curl_easy_cleanup(i32* %96)
  %98 = call i32 (...) @curl_global_cleanup()
  %99 = load i32, i32* %5, align 4
  ret i32 %99
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

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local { i64, i64 } @tutil_tvnow(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @tutil_tvdiff(i64, i64, i64, i64) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
