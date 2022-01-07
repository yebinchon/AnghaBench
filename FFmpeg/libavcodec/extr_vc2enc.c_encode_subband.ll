; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_encode_subband.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_encode_subband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32** }
%struct.TYPE_6__ = type { i32, i32, i32, i64* }

@ff_dirac_qscale_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32, %struct.TYPE_6__*, i32)* @encode_subband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_subband(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_6__* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  store i32 %5, i32* %12, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 0
  %29 = mul nsw i32 %26, %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %29, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 %36, %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %39, %42
  store i32 %43, i32* %16, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 0
  %49 = mul nsw i32 %46, %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %49, %52
  store i32 %53, i32* %17, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = mul nsw i32 %56, %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %59, %62
  store i32 %63, i32* %18, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %66, i64 %72
  store i64* %73, i64** %19, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 2
  store i32 %83, i32* %20, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %21, align 4
  %93 = load i32*, i32** @ff_dirac_qscale_tab, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @av_log2(i32 %97)
  %99 = add nsw i32 %98, 32
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %148, %6
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %151

105:                                              ; preds = %101
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %138, %105
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %141

111:                                              ; preds = %107
  %112 = load i64*, i64** %19, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @FFABS(i64 %116)
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %22, align 4
  %121 = call i64 @QUANT(i32 %117, i32 %118, i32 %119, i32 %120)
  store i64 %121, i64* %23, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load i64, i64* %23, align 8
  %124 = call i32 @put_vc2_ue_uint(i32* %122, i64 %123)
  %125 = load i64, i64* %23, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %111
  %128 = load i32*, i32** %8, align 8
  %129 = load i64*, i64** %19, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @put_bits(i32* %128, i32 1, i32 %135)
  br label %137

137:                                              ; preds = %127, %111
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %107

141:                                              ; preds = %107
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i64*, i64** %19, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  store i64* %147, i64** %19, align 8
  br label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  br label %101

151:                                              ; preds = %101
  ret void
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i64 @QUANT(i32, i32, i32, i32) #1

declare dso_local i32 @FFABS(i64) #1

declare dso_local i32 @put_vc2_ue_uint(i32*, i64) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
