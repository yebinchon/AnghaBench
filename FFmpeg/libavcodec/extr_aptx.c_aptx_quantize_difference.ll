; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aptx.c_aptx_quantize_difference.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aptx.c_aptx_quantize_difference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_6__*)* @aptx_quantize_difference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aptx_quantize_difference(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @FFABS(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = call i32 @FFMIN(i32 %27, i32 8388607)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = ashr i32 %29, 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @aptx_bin_search(i32 %30, i32 %31, i32* %32, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @MULH(i32 %37, i32 %38)
  %40 = call i32 @rshift32_clip24(i32 %39, i32 7)
  %41 = sub nsw i32 %40, 8388608
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MUL64(i32 %42, i32 %49)
  %51 = call i32 @rshift64(i32 %50, i32 23)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %16, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = sub nsw i32 0, %73
  %75 = or i32 %74, 1
  %76 = mul nsw i32 %70, %75
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @MUL64(i32 %77, i32 %78)
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i64 @av_clip_intp2(i32 %82, i32 23)
  %84 = trunc i64 %83 to i32
  %85 = shl i32 %84, 32
  %86 = add nsw i32 %79, %85
  %87 = call i32 @rshift64_clip24(i32 %86, i32 32)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %19, align 4
  %89 = shl i32 %88, 20
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @MUL64(i32 %90, i32 %91)
  %93 = sub nsw i32 %89, %92
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = call i32 @rshift64(i32 %94, i32 23)
  %96 = call i8* @FFABS(i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %20, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %5
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %12, align 4
  br label %108

105:                                              ; preds = %5
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %18, align 4
  %115 = xor i32 %113, %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %18, align 4
  %120 = xor i32 %118, %119
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  ret void
}

declare dso_local i8* @FFABS(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @aptx_bin_search(i32, i32, i32*, i32) #1

declare dso_local i32 @rshift32_clip24(i32, i32) #1

declare dso_local i32 @MULH(i32, i32) #1

declare dso_local i32 @rshift64(i32, i32) #1

declare dso_local i32 @MUL64(i32, i32) #1

declare dso_local i32 @rshift64_clip24(i32, i32) #1

declare dso_local i64 @av_clip_intp2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
