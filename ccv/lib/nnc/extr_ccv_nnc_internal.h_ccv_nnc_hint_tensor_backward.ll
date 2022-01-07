; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_internal.h_ccv_nnc_hint_tensor_backward.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_internal.h_ccv_nnc_hint_tensor_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }

@CCV_NNC_MAX_DIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, %struct.TYPE_16__*, %struct.TYPE_15__*)* @ccv_nnc_hint_tensor_backward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccv_nnc_hint_tensor_backward(i32* %0, i64 %1, i32* %2, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %3, %struct.TYPE_15__* %4) #0 {
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32* %0, i32** %14, align 8
  %15 = bitcast %struct.TYPE_15__* %7 to { i64, i32* }*
  %16 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %15, i32 0, i32 0
  store i64 %1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %15, i32 0, i32 1
  store i32* %2, i32** %17, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ccv_nnc_tensor_nd(i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %36 = add nsw i32 %35, 2
  %37 = icmp eq i32 %34, %36
  br label %38

38:                                               ; preds = %33, %5
  %39 = phi i1 [ true, %5 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = bitcast %struct.TYPE_15__* %7 to { i64, i32* }*
  %44 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %43, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ccv_nnc_tensor_hw(i64 %45, i32* %47, i32 %42)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp sge i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %109, %38
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %112

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ccv_max(i32 1, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %74, %75
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %76, %83
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %84, %91
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %92, %99
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32 %100, i32* %108, align 4
  br label %109

109:                                              ; preds = %57
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %53

112:                                              ; preds = %53
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_nnc_tensor_nd(i32*) #1

declare dso_local i32 @ccv_nnc_tensor_hw(i64, i32*, i32) #1

declare dso_local i32 @ccv_max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
