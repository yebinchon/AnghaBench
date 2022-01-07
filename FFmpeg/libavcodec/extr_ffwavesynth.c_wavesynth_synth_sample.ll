; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_wavesynth_synth_sample.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_wavesynth_synth_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wavesynth_context = type { i32, i64, i32*, i32*, i32, %struct.ws_interval* }
%struct.ws_interval = type { i32, i64, i32, i32, i64, i64, i64, i32, i64 }

@PINK_UNIT = common dso_local global i64 0, align 8
@SIN_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wavesynth_context*, i64, i32*)* @wavesynth_synth_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wavesynth_synth_sample(%struct.wavesynth_context* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.wavesynth_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ws_interval*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wavesynth_context* %0, %struct.wavesynth_context** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %17 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %20 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %19, i32 0, i32 0
  store i32* %20, i32** %12, align 8
  %21 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %22 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PINK_UNIT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %28 = call i32 @pink_fill(%struct.wavesynth_context* %27)
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %31 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %34 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = getelementptr inbounds i32, i32* %32, i64 %35
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 16
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %142, %58, %29
  %41 = load i32, i32* %11, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %143

43:                                               ; preds = %40
  %44 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %45 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %44, i32 0, i32 5
  %46 = load %struct.ws_interval*, %struct.ws_interval** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %46, i64 %48
  store %struct.ws_interval* %49, %struct.ws_interval** %10, align 8
  %50 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %51 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %11, align 4
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %55 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %12, align 8
  store i32 %59, i32* %60, align 4
  br label %40

61:                                               ; preds = %43
  %62 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %63 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %62, i32 0, i32 0
  store i32* %63, i32** %12, align 8
  %64 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %65 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 32
  store i32 %67, i32* %7, align 4
  %68 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %69 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %72 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  %77 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %78 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %113 [
    i32 128, label %80
    i32 129, label %109
  ]

80:                                               ; preds = %61
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %83 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %86 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @SIN_BITS, align 4
  %89 = sub nsw i32 64, %88
  %90 = zext i32 %89 to i64
  %91 = lshr i64 %87, %90
  %92 = getelementptr inbounds i32, i32* %84, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = mul i32 %81, %93
  store i32 %94, i32* %8, align 4
  %95 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %96 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %99 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %103 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %106 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %104
  store i64 %108, i64* %106, align 8
  br label %114

109:                                              ; preds = %61
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %13, align 4
  %112 = mul i32 %110, %111
  store i32 %112, i32* %8, align 4
  br label %114

113:                                              ; preds = %61
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %109, %80
  %115 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %116 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %15, align 4
  %120 = load %struct.ws_interval*, %struct.ws_interval** %10, align 8
  %121 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %14, align 4
  %123 = load i32*, i32** %6, align 8
  store i32* %123, i32** %9, align 8
  br label %124

124:                                              ; preds = %137, %114
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load i32, i32* %14, align 4
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i32, i32* %8, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add i32 %134, %132
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %131, %127
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %14, align 4
  %139 = ashr i32 %138, 1
  store i32 %139, i32* %14, align 4
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %9, align 8
  br label %124

142:                                              ; preds = %124
  br label %40

143:                                              ; preds = %40
  %144 = load %struct.wavesynth_context*, %struct.wavesynth_context** %4, align 8
  %145 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %144, i32 0, i32 4
  %146 = call i64 @lcg_next(i32* %145)
  %147 = trunc i64 %146 to i32
  %148 = lshr i32 %147, 16
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %14, align 4
  %150 = load i32*, i32** %6, align 8
  store i32* %150, i32** %9, align 8
  br label %151

151:                                              ; preds = %164, %143
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = load i32, i32* %14, align 4
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32, i32* %8, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %160, align 4
  %162 = add i32 %161, %159
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %158, %154
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %14, align 4
  %166 = ashr i32 %165, 1
  store i32 %166, i32* %14, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %9, align 8
  br label %151

169:                                              ; preds = %151
  ret void
}

declare dso_local i32 @pink_fill(%struct.wavesynth_context*) #1

declare dso_local i64 @lcg_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
