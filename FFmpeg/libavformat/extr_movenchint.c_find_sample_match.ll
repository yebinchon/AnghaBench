; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenchint.c_find_sample_match.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenchint.c_find_sample_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_5__*, i32*, i32*, i32*, i32*)* @find_sample_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_sample_match(i32* %0, i32 %1, %struct.TYPE_5__* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  br label %17

17:                                               ; preds = %101, %7
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %102

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %16, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 5
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 5, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31, %22
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = call i64 @match_segments(i32* %40, i32 %41, i32 %44, i32 %47, i32 %50, i32* %51, i32* %52, i32* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %39
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %13, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %15, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %62, %64
  %66 = add nsw i32 %65, 5
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 10
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %56
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %79 = call i32 @sample_queue_pop(%struct.TYPE_5__* %78)
  br label %80

80:                                               ; preds = %77, %56
  store i32 0, i32* %8, align 4
  br label %103

81:                                               ; preds = %39
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 10
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 20
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %101

98:                                               ; preds = %86, %81
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %100 = call i32 @sample_queue_pop(%struct.TYPE_5__* %99)
  br label %101

101:                                              ; preds = %98, %91
  br label %17

102:                                              ; preds = %17
  store i32 -1, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %80
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i64 @match_segments(i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @sample_queue_pop(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
