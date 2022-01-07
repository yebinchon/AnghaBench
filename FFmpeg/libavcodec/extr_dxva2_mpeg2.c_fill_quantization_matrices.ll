; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_mpeg2.c_fill_quantization_matrices.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_mpeg2.c_fill_quantization_matrices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MpegEncContext = type { i32*, i32*, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32*, i32** }

@ff_zigzag_direct = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.MpegEncContext*, %struct.TYPE_5__*)* @fill_quantization_matrices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_quantization_matrices(i32* %0, i32* %1, %struct.MpegEncContext* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.MpegEncContext*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.MpegEncContext* %2, %struct.MpegEncContext** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %21, %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  br label %11

24:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %100, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 64
  br i1 %27, label %28, label %103

28:                                               ; preds = %25
  %29 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %30 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64*, i64** @ff_zigzag_direct, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %41 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %46, i32* %54, align 4
  %55 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %56 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %61, i32* %69, align 4
  %70 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %71 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %76, i32* %84, align 4
  %85 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %86 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %91, i32* %99, align 4
  br label %100

100:                                              ; preds = %28
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %25

103:                                              ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
