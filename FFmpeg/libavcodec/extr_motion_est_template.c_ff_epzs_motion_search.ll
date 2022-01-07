; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est_template.c_ff_epzs_motion_search.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est_template.c_ff_epzs_motion_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_epzs_motion_search(%struct.TYPE_5__* %0, i32* %1, i32* %2, [2 x i32]* %3, i32 %4, i32 %5, [2 x i32]* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [2 x i32]*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32]*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store [2 x i32]* %3, [2 x i32]** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store [2 x i32]* %6, [2 x i32]** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %22, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %10
  %30 = load i32, i32* %21, align 4
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i32, i32* %20, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load [2 x i32]*, [2 x i32]** %15, align 8
  %40 = bitcast [2 x i32]* %39 to i32**
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load [2 x i32]*, [2 x i32]** %18, align 8
  %44 = bitcast [2 x i32]* %43 to i32**
  %45 = load i32, i32* %19, align 4
  %46 = call i32 @epzs_motion_search_internal(%struct.TYPE_5__* %36, i32* %37, i32* %38, i32** %40, i32 %41, i32 %42, i32** %44, i32 %45, i64 0, i32 0, i32 16)
  store i32 %46, i32* %11, align 4
  br label %64

47:                                               ; preds = %32, %29, %10
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load [2 x i32]*, [2 x i32]** %15, align 8
  %52 = bitcast [2 x i32]* %51 to i32**
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load [2 x i32]*, [2 x i32]** %18, align 8
  %56 = bitcast [2 x i32]* %55 to i32**
  %57 = load i32, i32* %19, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %21, align 4
  %63 = call i32 @epzs_motion_search_internal(%struct.TYPE_5__* %48, i32* %49, i32* %50, i32** %52, i32 %53, i32 %54, i32** %56, i32 %57, i64 %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %47, %35
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32 @epzs_motion_search_internal(%struct.TYPE_5__*, i32*, i32*, i32**, i32, i32, i32**, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
