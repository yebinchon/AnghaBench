; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_find_quant_thread.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_find_quant_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@TRELLIS_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32)* @find_quant_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_quant_thread(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %9, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %23
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %10, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %58, %4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %44, %35
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %36

47:                                               ; preds = %36
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @TRELLIS_WIDTH, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = call i32 @find_slice_quant(%struct.TYPE_11__* %48, i32 %52, i32 %53, i32 %54, i32 %55, %struct.TYPE_9__* %56)
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %29

64:                                               ; preds = %29
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %101, %64
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %69
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = add nsw i32 %84, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %83, i64 %91
  store i32 %80, i32* %92, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %72
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %12, align 4
  br label %69

104:                                              ; preds = %69
  ret i32 0
}

declare dso_local i32 @find_slice_quant(%struct.TYPE_11__*, i32, i32, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
