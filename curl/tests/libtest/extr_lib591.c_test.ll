; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib591.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib591.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i32, i32 }

@libtest_arg3 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"fopen() failed with error: %d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Error opening file: (%s)\0A\00", align 1
@TEST_ERR_FOPEN = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_FTPPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@CURLOPT_ACCEPTTIMEOUT_MS = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %10, align 8
  %18 = call i32 (...) @start_test_timing()
  %19 = load i8*, i8** @libtest_arg3, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i8* @strerror(i32 %26)
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25, i8* %27)
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** @libtest_arg3, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @TEST_ERR_FOPEN, align 4
  store i32 %32, i32* %2, align 4
  br label %137

33:                                               ; preds = %1
  %34 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %35 = call i32 @res_global_init(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @fclose(i32* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %137

42:                                               ; preds = %33
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @easy_init(i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %47 = call i32 (i32*, i32, ...) @easy_setopt(i32* %45, i32 %46, i64 1)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @CURLOPT_URL, align 4
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 (i32*, i32, ...) @easy_setopt(i32* %48, i32 %49, i8* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %54 = call i32 (i32*, i32, ...) @easy_setopt(i32* %52, i32 %53, i64 1)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @CURLOPT_READDATA, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 (i32*, i32, ...) @easy_setopt(i32* %55, i32 %56, i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @CURLOPT_FTPPORT, align 4
  %61 = call i32 (i32*, i32, ...) @easy_setopt(i32* %59, i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @CURLOPT_ACCEPTTIMEOUT_MS, align 4
  %64 = load i32, i32* @libtest_arg2, align 4
  %65 = call i32 @strtol(i32 %64, i32* null, i32 10)
  %66 = mul nsw i32 %65, 1000
  %67 = call i32 (i32*, i32, ...) @easy_setopt(i32* %62, i32 %63, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @multi_init(i32* %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @multi_add_handle(i32* %70, i32* %71)
  br label %73

73:                                               ; preds = %112, %42
  store i64 -99, i64* %15, align 8
  store i32 -99, i32* %16, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @multi_perform(i32* %74, i32* %7)
  %76 = call i32 (...) @abort_on_test_timeout()
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %117

80:                                               ; preds = %73
  %81 = call i32 @FD_ZERO(i32* %12)
  %82 = call i32 @FD_ZERO(i32* %13)
  %83 = call i32 @FD_ZERO(i32* %14)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @multi_fdset(i32* %84, i32* %12, i32* %13, i32* %14, i32* %16)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @multi_timeout(i32* %86, i64* %15)
  %88 = load i64, i64* %15, align 8
  %89 = icmp ne i64 %88, -1
  br i1 %89, label %90, label %109

90:                                               ; preds = %80
  %91 = load i64, i64* %15, align 8
  %92 = load i32, i32* @INT_MAX, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp sgt i64 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @INT_MAX, align 4
  br label %100

97:                                               ; preds = %90
  %98 = load i64, i64* %15, align 8
  %99 = trunc i64 %98 to i32
  br label %100

100:                                              ; preds = %97, %95
  %101 = phi i32 [ %96, %95 ], [ %99, %97 ]
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = sdiv i32 %102, 1000
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %17, align 4
  %106 = srem i32 %105, 1000
  %107 = mul nsw i32 %106, 1000
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  br label %112

109:                                              ; preds = %80
  %110 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i32 100000, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %100
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 @select_test(i32 %114, i32* %12, i32* %13, i32* %14, %struct.timeval* %11)
  %116 = call i32 (...) @abort_on_test_timeout()
  br label %73

117:                                              ; preds = %79
  %118 = load i32*, i32** %5, align 8
  %119 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %118, i32* %8)
  store %struct.TYPE_5__* %119, %struct.TYPE_5__** %9, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %121 = icmp ne %struct.TYPE_5__* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %122, %117
  br label %128

128:                                              ; preds = %127
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @curl_multi_cleanup(i32* %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @curl_easy_cleanup(i32* %131)
  %133 = call i32 (...) @curl_global_cleanup()
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @fclose(i32* %134)
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %128, %38, %23
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @res_global_init(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @multi_timeout(i32*, i64*) #1

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
