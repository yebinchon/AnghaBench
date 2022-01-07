; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_testtrace.c_libtest_debug_cb.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_testtrace.c_libtest_debug_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libtest_trace_cfg = type { i32, i64 }
%struct.timeval = type { i64, i64 }
%struct.tm = type { i32, i32, i32 }

@known_offset = common dso_local global i32 0, align 4
@epoch_offset = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%02d:%02d:%02d.%06ld \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s== Info: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"=> Send header\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"=> Send data\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"=> Send SSL data\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"<= Recv header\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"<= Recv data\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"<= Recv SSL data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libtest_debug_cb(i32* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.libtest_trace_cfg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca [20 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.tm*, align 8
  %19 = alloca %struct.timeval, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast i8* %20 to %struct.libtest_trace_cfg*
  store %struct.libtest_trace_cfg* %21, %struct.libtest_trace_cfg** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %23, align 16
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  store i8* %24, i8** %16, align 8
  %25 = load %struct.libtest_trace_cfg*, %struct.libtest_trace_cfg** %12, align 8
  %26 = getelementptr inbounds %struct.libtest_trace_cfg, %struct.libtest_trace_cfg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %5
  %30 = call { i64, i64 } (...) @tutil_tvnow()
  %31 = bitcast %struct.timeval* %19 to { i64, i64 }*
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0
  %33 = extractvalue { i64, i64 } %30, 0
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1
  %35 = extractvalue { i64, i64 } %30, 1
  store i64 %35, i64* %34, align 8
  %36 = bitcast %struct.timeval* %14 to i8*
  %37 = bitcast %struct.timeval* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = load i32, i32* @known_offset, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = call i64 @time(i32* null)
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %41, %43
  store i64 %44, i64* @epoch_offset, align 8
  store i32 1, i32* @known_offset, align 4
  br label %45

45:                                               ; preds = %40, %29
  %46 = load i64, i64* @epoch_offset, align 8
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %46, %48
  store i64 %49, i64* %17, align 8
  %50 = call %struct.tm* @localtime(i64* %17)
  store %struct.tm* %50, %struct.tm** %18, align 8
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %52 = load %struct.tm*, %struct.tm** %18, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tm*, %struct.tm** %18, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tm*, %struct.tm** %18, align 8
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @msnprintf(i8* %51, i32 20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %60, i64 %62)
  br label %64

64:                                               ; preds = %45, %5
  %65 = load i32, i32* %8, align 4
  switch i32 %65, label %71 [
    i32 128, label %66
    i32 131, label %72
    i32 133, label %73
    i32 129, label %74
    i32 132, label %75
    i32 134, label %76
    i32 130, label %77
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %16, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %69)
  br label %71

71:                                               ; preds = %64, %66
  store i32 0, i32* %6, align 4
  br label %88

72:                                               ; preds = %64
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %78

73:                                               ; preds = %64
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %78

74:                                               ; preds = %64
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %78

75:                                               ; preds = %64
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %78

76:                                               ; preds = %64
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %78

77:                                               ; preds = %64
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %78

78:                                               ; preds = %77, %76, %75, %74, %73, %72
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.libtest_trace_cfg*, %struct.libtest_trace_cfg** %12, align 8
  %85 = getelementptr inbounds %struct.libtest_trace_cfg, %struct.libtest_trace_cfg* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @libtest_debug_dump(i8* %79, i8* %80, i32 %81, i8* %82, i64 %83, i32 %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %78, %71
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local { i64, i64 } @tutil_tvnow(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @libtest_debug_dump(i8*, i8*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
