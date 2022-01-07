; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gsmdec_template.c_gsm_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gsmdec_template.c_gsm_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32**, i64, i32, i32* }

@ff_gsm_apcm_bits = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32)* @gsm_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsm_decode_block(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 120
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32*, i32** %25, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @get_bits(i32* %31, i32 6)
  %33 = call i32 @decode_log_area(i32 %32, i32 13107, i32 32768)
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @get_bits(i32* %36, i32 6)
  %38 = call i32 @decode_log_area(i32 %37, i32 13107, i32 32768)
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @get_bits(i32* %41, i32 5)
  %43 = call i32 @decode_log_area(i32 %42, i32 13107, i32 20480)
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @get_bits(i32* %46, i32 5)
  %48 = call i32 @decode_log_area(i32 %47, i32 13107, i32 11264)
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @get_bits(i32* %51, i32 4)
  %53 = call i32 @decode_log_area(i32 %52, i32 19223, i32 8380)
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @get_bits(i32* %56, i32 4)
  %58 = call i32 @decode_log_area(i32 %57, i32 17476, i32 4608)
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @get_bits(i32* %61, i32 3)
  %63 = call i32 @decode_log_area(i32 %62, i32 31454, i32 3414)
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @get_bits(i32* %66, i32 3)
  %68 = call i32 @decode_log_area(i32 %67, i32 29708, i32 1808)
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %104, %4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @get_bits(i32* %75, i32 7)
  store i32 %76, i32* %13, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @get_bits(i32* %77, i32 2)
  store i32 %78, i32* %14, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @get_bits(i32* %79, i32 2)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @av_clip(i32 %81, i32 40, i32 120)
  store i32 %82, i32* %13, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @long_term_synth(i32* %83, i32 %84, i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32**, i32*** @ff_gsm_apcm_bits, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @apcm_dequant_add(i32* %87, i32* %91, i32 %100)
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 40
  store i32* %103, i32** %11, align 8
  br label %104

104:                                              ; preds = %74
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %71

107:                                              ; preds = %71
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 160
  %115 = call i32 @memcpy(i32* %110, i32* %114, i32 480)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 120
  %122 = call i32 @short_term_synth(%struct.TYPE_5__* %116, i32* %117, i32* %121)
  %123 = load i32*, i32** %6, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @postprocess(i32* %123, i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  ret i32 0
}

declare dso_local i32 @decode_log_area(i32, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @long_term_synth(i32*, i32, i32) #1

declare dso_local i32 @apcm_dequant_add(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @short_term_synth(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @postprocess(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
