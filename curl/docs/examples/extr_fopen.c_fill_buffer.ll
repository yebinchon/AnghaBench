; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_fopen.c_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_fopen.c_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@multi_handle = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
@__const.fill_buffer.wait = private unnamed_addr constant %struct.timeval { i32 0, i64 100000, i32 0, i32 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_buffer(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.timeval, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %97

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %94, %26
  store i32 -1, i32* %12, align 4
  store i64 -1, i64* %13, align 8
  %28 = call i32 @FD_ZERO(i32* %6)
  %29 = call i32 @FD_ZERO(i32* %7)
  %30 = call i32 @FD_ZERO(i32* %8)
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 60, i32* %31, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @multi_handle, align 4
  %34 = call i32 @curl_multi_timeout(i32 %33, i64* %13)
  %35 = load i64, i64* %13, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %27
  %38 = load i64, i64* %13, align 8
  %39 = sdiv i64 %38, 1000
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %52

47:                                               ; preds = %37
  %48 = load i64, i64* %13, align 8
  %49 = srem i64 %48, 1000
  %50 = mul nsw i64 %49, 1000
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %45
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i32, i32* @multi_handle, align 4
  %55 = call i32 @curl_multi_fdset(i32 %54, i32* %6, i32* %7, i32* %8, i32* %12)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @CURLM_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %96

63:                                               ; preds = %53
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = bitcast %struct.timeval* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 bitcast (%struct.timeval* @__const.fill_buffer.wait to i8*), i64 24, i1 false)
  %68 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %14)
  store i32 %68, i32* %10, align 4
  br label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @select(i32 %71, i32* %6, i32* %7, i32* %8, %struct.timeval* %9)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %10, align 4
  switch i32 %74, label %77 [
    i32 -1, label %75
    i32 0, label %76
  ]

75:                                               ; preds = %73
  br label %82

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %73, %76
  %78 = load i32, i32* @multi_handle, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = call i32 @curl_multi_perform(i32 %78, i64* %80)
  br label %82

82:                                               ; preds = %77, %75
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp ult i64 %91, %92
  br label %94

94:                                               ; preds = %88, %83
  %95 = phi i1 [ false, %83 ], [ %93, %88 ]
  br i1 %95, label %27, label %96

96:                                               ; preds = %94, %59
  store i32 1, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %25
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @curl_multi_timeout(i32, i64*) #1

declare dso_local i32 @curl_multi_fdset(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @curl_multi_perform(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
