; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_wavesynth_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_wavesynth_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.wavesynth_context* }
%struct.wavesynth_context = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i64* }

@WS_MAX_CHANNELS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*, %struct.TYPE_8__*)* @wavesynth_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavesynth_decode(%struct.TYPE_10__* %0, i8* %1, i32* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.wavesynth_context*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.wavesynth_context*, %struct.wavesynth_context** %22, align 8
  store %struct.wavesynth_context* %23, %struct.wavesynth_context** %10, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %11, align 8
  %26 = load i32, i32* @WS_MAX_CHANNELS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %18, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %19, align 8
  %30 = load i32*, i32** %8, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 12
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %139

37:                                               ; preds = %4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @AV_RL64(i64 %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.wavesynth_context*, %struct.wavesynth_context** %10, align 8
  %44 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.wavesynth_context*, %struct.wavesynth_context** %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @wavesynth_seek(%struct.wavesynth_context* %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %37
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 8
  %56 = call i32 @AV_RL32(i64 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @EINVAL, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %139

62:                                               ; preds = %51
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %68 = call i32 @ff_get_buffer(%struct.TYPE_10__* %66, %struct.TYPE_9__* %67, i32 0)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %139

73:                                               ; preds = %62
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %17, align 8
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %123, %73
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %128

84:                                               ; preds = %80
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memset(i32* %29, i32 0, i32 %90)
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.wavesynth_context*, %struct.wavesynth_context** %10, align 8
  %94 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load %struct.wavesynth_context*, %struct.wavesynth_context** %10, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @wavesynth_enter_intervals(%struct.wavesynth_context* %98, i64 %99)
  br label %101

101:                                              ; preds = %97, %84
  %102 = load %struct.wavesynth_context*, %struct.wavesynth_context** %10, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @wavesynth_synth_sample(%struct.wavesynth_context* %102, i64 %103, i32* %29)
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %119, %101
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %29, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 16
  %117 = load i32*, i32** %17, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %17, align 8
  store i32 %116, i32* %117, align 4
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %105

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  %126 = load i64, i64* %12, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %12, align 8
  br label %80

128:                                              ; preds = %80
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.wavesynth_context*, %struct.wavesynth_context** %10, align 8
  %132 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, %130
  store i64 %134, i64* %132, align 8
  %135 = load i32*, i32** %8, align 8
  store i32 1, i32* %135, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %139

139:                                              ; preds = %128, %71, %59, %35
  %140 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @AV_RL64(i64) #2

declare dso_local i32 @wavesynth_seek(%struct.wavesynth_context*, i64) #2

declare dso_local i32 @AV_RL32(i64) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_get_buffer(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @wavesynth_enter_intervals(%struct.wavesynth_context*, i64) #2

declare dso_local i32 @wavesynth_synth_sample(%struct.wavesynth_context*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
