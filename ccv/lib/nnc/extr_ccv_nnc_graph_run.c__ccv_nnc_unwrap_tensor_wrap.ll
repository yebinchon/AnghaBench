; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph_run.c__ccv_nnc_unwrap_tensor_wrap.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph_run.c__ccv_nnc_unwrap_tensor_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, i64, i32** }
%struct.TYPE_7__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i64, %struct.TYPE_8__*)* @_ccv_nnc_unwrap_tensor_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_unwrap_tensor_wrap(%struct.TYPE_9__* %0, i64 %1, i64 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %16 = load i32**, i32*** %15, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %16, i64 %19
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %96, %4
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @CCV_IS_TENSOR_MULTIVIEW(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_7__*
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = ptrtoint %struct.TYPE_9__* %31 to i64
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** %9, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_7__*
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br label %43

43:                                               ; preds = %34, %26
  %44 = phi i1 [ true, %26 ], [ %42, %34 ]
  br label %45

45:                                               ; preds = %43, %22
  %46 = phi i1 [ false, %22 ], [ %44, %43 ]
  br i1 %46, label %47, label %118

47:                                               ; preds = %45
  %48 = load i32*, i32** %9, align 8
  %49 = bitcast i32* %48 to %struct.TYPE_7__*
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = ptrtoint %struct.TYPE_9__* %52 to i64
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* %6, align 8
  br label %59

57:                                               ; preds = %47
  %58 = load i64, i64* %7, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = bitcast i32* %62 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %11, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %12, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = call i32** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_7__* %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %59
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %13, align 4
  %80 = srem i32 %78, %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %80, %81
  br label %85

83:                                               ; preds = %59
  %84 = load i32, i32* %10, align 4
  br label %85

85:                                               ; preds = %83, %75
  %86 = phi i32 [ %82, %75 ], [ %84, %83 ]
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %71, i64 %87
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %9, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @CCV_IS_TENSOR_MULTIVIEW(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %85
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load i32**, i32*** %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32*, i32** %104, i64 %107
  store i32* %101, i32** %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  br label %22

118:                                              ; preds = %45
  ret void
}

declare dso_local i64 @CCV_IS_TENSOR_MULTIVIEW(i32*) #1

declare dso_local i32** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
