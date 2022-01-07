; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_cuda.c_cuda_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_cuda.c_cuda_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32**)*, i32 (i64)*, i32 (i64*, i32)*, i32 (i32)* }

@cuda_buffer_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @cuda_pool_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cuda_pool_alloc(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %7, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32)
  %34 = call i32 @CHECK_CU(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %72

38:                                               ; preds = %2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32 (i64*, i32)*, i32 (i64*, i32)** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 %41(i64* %12, i32 %42)
  %44 = call i32 @CHECK_CU(i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %65

48:                                               ; preds = %38
  %49 = load i64, i64* %12, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @cuda_buffer_free, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = call i32* @av_buffer_create(i32* %50, i32 %51, i32 %52, %struct.TYPE_9__* %53, i32 0)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %48
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32 (i64)*, i32 (i64)** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 %60(i64 %61)
  %63 = call i32 @CHECK_CU(i32 %62)
  br label %65

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %57, %47
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32 (i32**)*, i32 (i32**)** %67, align 8
  %69 = call i32 %68(i32** %11)
  %70 = call i32 @CHECK_CU(i32 %69)
  %71 = load i32*, i32** %10, align 8
  store i32* %71, i32** %3, align 8
  br label %72

72:                                               ; preds = %65, %37
  %73 = load i32*, i32** %3, align 8
  ret i32* %73
}

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i32* @av_buffer_create(i32*, i32, i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
