; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1531.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1531.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDSIZE_LARGE = common dso_local global i32 0, align 4
@testDataSize = common dso_local global i64 0, align 8
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@testData = common dso_local global i8* null, align 8
@CURLM_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
@__const.test.wait = private unnamed_addr constant %struct.timeval { i32 0, i64 100000, i32 0, i32 0 }, align 8
@CURLMSG_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"HTTP transfer completed with status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.timeval, align 8
  store i8* %0, i8** %2, align 8
  %18 = load i32, i32* @CURLE_OK, align 4
  store i32 %18, i32* %8, align 4
  %19 = call i32 (...) @start_test_timing()
  %20 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %21 = call i32 @global_init(i32 %20)
  %22 = call i32* (...) @curl_easy_init()
  store i32* %22, i32** %3, align 8
  %23 = call i32* (...) @curl_multi_init()
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @curl_multi_add_handle(i32* %24, i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @CURLOPT_URL, align 4
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @curl_easy_setopt(i32* %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @CURLOPT_POSTFIELDSIZE_LARGE, align 4
  %33 = load i64, i64* @testDataSize, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @curl_easy_setopt(i32* %31, i32 %32, i8* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %38 = load i8*, i8** @testData, align 8
  %39 = call i32 @curl_easy_setopt(i32* %36, i32 %37, i8* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @curl_multi_perform(i32* %40, i32* %5)
  %42 = call i32 (...) @abort_on_test_timeout()
  br label %43

43:                                               ; preds = %98, %1
  store i32 -1, i32* %15, align 4
  store i64 -1, i64* %16, align 8
  %44 = call i32 @FD_ZERO(i32* %12)
  %45 = call i32 @FD_ZERO(i32* %13)
  %46 = call i32 @FD_ZERO(i32* %14)
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @curl_multi_timeout(i32* %49, i64* %16)
  %51 = load i64, i64* %16, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %43
  %54 = load i64, i64* %16, align 8
  %55 = sdiv i64 %54, 1000
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %68

63:                                               ; preds = %53
  %64 = load i64, i64* %16, align 8
  %65 = srem i64 %64, 1000
  %66 = mul nsw i64 %65, 1000
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %63, %61
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32*, i32** %4, align 8
  %71 = call i64 @curl_multi_fdset(i32* %70, i32* %12, i32* %13, i32* %14, i32* %15)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @CURLM_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @stderr, align 4
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %77)
  br label %101

79:                                               ; preds = %69
  %80 = load i32, i32* %15, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = bitcast %struct.timeval* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 bitcast (%struct.timeval* @__const.test.wait to i8*), i64 24, i1 false)
  %84 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %17)
  store i32 %84, i32* %10, align 4
  br label %89

85:                                               ; preds = %79
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @select(i32 %87, i32* %12, i32* %13, i32* %14, %struct.timeval* %9)
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %10, align 4
  switch i32 %90, label %93 [
    i32 -1, label %91
    i32 0, label %92
  ]

91:                                               ; preds = %89
  br label %96

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %89, %92
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @curl_multi_perform(i32* %94, i32* %5)
  br label %96

96:                                               ; preds = %93, %91
  %97 = call i32 (...) @abort_on_test_timeout()
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %43, label %101

101:                                              ; preds = %98, %75
  br label %102

102:                                              ; preds = %121, %101
  %103 = load i32*, i32** %4, align 8
  %104 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %103, i32* %7)
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %6, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = icmp ne %struct.TYPE_5__* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CURLMSG_DONE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %124

119:                                              ; preds = %107, %102
  %120 = call i32 (...) @abort_on_test_timeout()
  br label %121

121:                                              ; preds = %119
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = icmp ne %struct.TYPE_5__* %122, null
  br i1 %123, label %102, label %124

124:                                              ; preds = %121, %113
  br label %125

125:                                              ; preds = %124
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @curl_multi_cleanup(i32* %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @curl_easy_cleanup(i32* %128)
  %130 = call i32 (...) @curl_global_cleanup()
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i32 @curl_multi_add_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @curl_multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #1

declare dso_local i64 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

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
