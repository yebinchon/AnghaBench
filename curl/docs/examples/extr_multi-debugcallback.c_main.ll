; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-debugcallback.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-debugcallback.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }

@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"https://www.example.com/\00", align 1
@CURLOPT_DEBUGFUNCTION = common dso_local global i32 0, align 4
@my_trace = common dso_local global i64 0, align 8
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
@__const.main.wait = private unnamed_addr constant %struct.timeval { i32 0, i64 100000, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"select() returns error, this is badness\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  %14 = call i32* (...) @curl_easy_init()
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @CURLOPT_URL, align 4
  %17 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %15, i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @CURLOPT_DEBUGFUNCTION, align 4
  %20 = load i64, i64* @my_trace, align 8
  %21 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %18, i32 %19, i64 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %24 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %22, i32 %23, i64 1)
  %25 = call i32* (...) @curl_multi_init()
  store i32* %25, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @curl_multi_add_handle(i32* %26, i32* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @curl_multi_perform(i32* %29, i32* %4)
  br label %31

31:                                               ; preds = %88, %0
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %89

34:                                               ; preds = %31
  store i32 -1, i32* %11, align 4
  store i64 -1, i64* %12, align 8
  %35 = call i32 @FD_ZERO(i32* %8)
  %36 = call i32 @FD_ZERO(i32* %9)
  %37 = call i32 @FD_ZERO(i32* %10)
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @curl_multi_timeout(i32* %40, i64* %12)
  %42 = load i64, i64* %12, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %34
  %45 = load i64, i64* %12, align 8
  %46 = sdiv i64 %45, 1000
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %59

54:                                               ; preds = %44
  %55 = load i64, i64* %12, align 8
  %56 = srem i64 %55, 1000
  %57 = mul nsw i64 %56, 1000
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %52
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @curl_multi_fdset(i32* %61, i32* %8, i32* %9, i32* %10, i32* %11)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @CURLM_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @stderr, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  br label %89

70:                                               ; preds = %60
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = bitcast %struct.timeval* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 bitcast (%struct.timeval* @__const.main.wait to i8*), i64 24, i1 false)
  %75 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %13)
  store i32 %75, i32* %6, align 4
  br label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @select(i32 %78, i32* %8, i32* %9, i32* %10, %struct.timeval* %5)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %85 [
    i32 -1, label %82
    i32 0, label %84
  ]

82:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  %83 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %88

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %80, %84
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @curl_multi_perform(i32* %86, i32* %4)
  br label %88

88:                                               ; preds = %85, %82
  br label %31

89:                                               ; preds = %66, %31
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @curl_multi_cleanup(i32* %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @curl_easy_cleanup(i32* %92)
  ret i32 0
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i32 @curl_multi_add_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_perform(i32*, i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #1

declare dso_local i64 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
