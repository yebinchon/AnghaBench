; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-double.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-double.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }

@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"https://www.example.com/\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"http://localhost/\00", align 1
@CURLM_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
@__const.main.wait = private unnamed_addr constant %struct.timeval { i32 0, i64 100000, i32 0, i32 0 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %5, align 4
  %15 = call i32* (...) @curl_easy_init()
  store i32* %15, i32** %2, align 8
  %16 = call i32* (...) @curl_easy_init()
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @CURLOPT_URL, align 4
  %19 = call i32 @curl_easy_setopt(i32* %17, i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @CURLOPT_URL, align 4
  %22 = call i32 @curl_easy_setopt(i32* %20, i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32* (...) @curl_multi_init()
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @curl_multi_add_handle(i32* %24, i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @curl_multi_add_handle(i32* %27, i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @curl_multi_perform(i32* %30, i32* %5)
  br label %32

32:                                               ; preds = %88, %0
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %89

35:                                               ; preds = %32
  store i32 -1, i32* %12, align 4
  store i64 -1, i64* %13, align 8
  %36 = call i32 @FD_ZERO(i32* %9)
  %37 = call i32 @FD_ZERO(i32* %10)
  %38 = call i32 @FD_ZERO(i32* %11)
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @curl_multi_timeout(i32* %41, i64* %13)
  %43 = load i64, i64* %13, align 8
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %35
  %46 = load i64, i64* %13, align 8
  %47 = sdiv i64 %46, 1000
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %60

55:                                               ; preds = %45
  %56 = load i64, i64* %13, align 8
  %57 = srem i64 %56, 1000
  %58 = mul nsw i64 %57, 1000
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %53
  br label %61

61:                                               ; preds = %60, %35
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @curl_multi_fdset(i32* %62, i32* %9, i32* %10, i32* %11, i32* %12)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @CURLM_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @stderr, align 4
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  br label %89

71:                                               ; preds = %61
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = bitcast %struct.timeval* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 bitcast (%struct.timeval* @__const.main.wait to i8*), i64 24, i1 false)
  %76 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %14)
  store i32 %76, i32* %7, align 4
  br label %81

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @select(i32 %79, i32* %9, i32* %10, i32* %11, %struct.timeval* %6)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %7, align 4
  switch i32 %82, label %85 [
    i32 -1, label %83
    i32 0, label %84
  ]

83:                                               ; preds = %81
  br label %88

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %81, %84
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @curl_multi_perform(i32* %86, i32* %5)
  br label %88

88:                                               ; preds = %85, %83
  br label %32

89:                                               ; preds = %67, %32
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @curl_multi_cleanup(i32* %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @curl_easy_cleanup(i32* %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @curl_easy_cleanup(i32* %94)
  ret i32 0
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

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

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
