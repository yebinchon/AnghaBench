; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib525.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib525.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.timeval = type { i32, i64 }

@libtest_arg2 = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Usage: lib525 [url] [uploadfile]\0A\00", align 1
@TEST_ERR_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"fopen failed with error: %d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Error opening file: (%s)\0A\00", align 1
@TEST_ERR_FOPEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"fstat() failed with error: %d (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"ERROR: cannot open file (%s)\0A\00", align 1
@TEST_ERR_FSTAT = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_FTPPORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %9, align 8
  %16 = call i32 (...) @start_test_timing()
  %17 = load i8*, i8** @libtest_arg2, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @TEST_ERR_USAGE, align 4
  store i32 %22, i32* %2, align 4
  br label %128

23:                                               ; preds = %1
  %24 = load i8*, i8** @libtest_arg2, align 8
  %25 = call i8* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* null, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* @errno, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i8* @strerror(i32 %31)
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %30, i8* %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** @libtest_arg2, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @TEST_ERR_FOPEN, align 4
  store i32 %37, i32* %2, align 4
  br label %128

38:                                               ; preds = %23
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @fileno(i8* %39)
  %41 = call i32 @fstat(i32 %40, %struct.TYPE_3__* %8)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* @errno, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %46, i8* %48)
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** @libtest_arg2, align 8
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @fclose(i8* %53)
  %55 = load i32, i32* @TEST_ERR_FSTAT, align 4
  store i32 %55, i32* %2, align 4
  br label %128

56:                                               ; preds = %38
  %57 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %58 = call i32 @res_global_init(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @fclose(i8* %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %128

65:                                               ; preds = %56
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @easy_init(i32* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %70 = call i32 (i32*, i32, ...) @easy_setopt(i32* %68, i32 %69, i64 1)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @CURLOPT_URL, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 (i32*, i32, ...) @easy_setopt(i32* %71, i32 %72, i8* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %77 = call i32 (i32*, i32, ...) @easy_setopt(i32* %75, i32 %76, i64 1)
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* @CURLOPT_FTPPORT, align 4
  %80 = call i32 (i32*, i32, ...) @easy_setopt(i32* %78, i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* @CURLOPT_READDATA, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (i32*, i32, ...) @easy_setopt(i32* %81, i32 %82, i8* %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @CURLOPT_INFILESIZE_LARGE, align 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 (i32*, i32, ...) @easy_setopt(i32* %85, i32 %86, i8* %89)
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @multi_init(i32* %91)
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @multi_add_handle(i32* %93, i32* %94)
  br label %96

96:                                               ; preds = %105, %65
  store i32 -99, i32* %15, align 4
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @multi_perform(i32* %99, i32* %10)
  %101 = call i32 (...) @abort_on_test_timeout()
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  br label %115

105:                                              ; preds = %96
  %106 = call i32 @FD_ZERO(i32* %12)
  %107 = call i32 @FD_ZERO(i32* %13)
  %108 = call i32 @FD_ZERO(i32* %14)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @multi_fdset(i32* %109, i32* %12, i32* %13, i32* %14, i32* %15)
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  %113 = call i32 @select_test(i32 %112, i32* %12, i32* %13, i32* %14, %struct.timeval* %11)
  %114 = call i32 (...) @abort_on_test_timeout()
  br label %96

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115
  %117 = load i32*, i32** %9, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @curl_multi_remove_handle(i32* %117, i32* %118)
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @curl_easy_cleanup(i32* %120)
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @curl_multi_cleanup(i32* %122)
  %124 = call i32 (...) @curl_global_cleanup()
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @fclose(i8* %125)
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %116, %61, %44, %28, %19
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fstat(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @fileno(i8*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i32 @res_global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
