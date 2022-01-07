; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truespeech.c_truespeech_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truespeech.c_truespeech_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Too small input buffer (%d bytes), need at least 32 bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_9__*)* @truespeech_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truespeech_decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %10, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sdiv i32 %30, 32
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @av_log(%struct.TYPE_11__* %35, i32 %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %5, align 4
  br label %111

39:                                               ; preds = %4
  %40 = load i32, i32* %17, align 4
  %41 = mul nsw i32 %40, 240
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = call i32 @ff_get_buffer(%struct.TYPE_11__* %44, %struct.TYPE_10__* %45, i32 0)
  store i32 %46, i32* %18, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %18, align 4
  store i32 %49, i32* %5, align 4
  br label %111

50:                                               ; preds = %39
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %16, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* %17, align 4
  %59 = mul nsw i32 %58, 240
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memset(i32* %57, i32 0, i32 %62)
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %105, %50
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %108

68:                                               ; preds = %64
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @truespeech_read_frame(i32* %69, i32* %70)
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 32
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @truespeech_correlate_filter(i32* %74)
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @truespeech_filters_merge(i32* %76)
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %99, %68
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %102

81:                                               ; preds = %78
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @truespeech_apply_twopoint_filter(i32* %82, i32 %83)
  %85 = load i32*, i32** %13, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @truespeech_place_pulses(i32* %85, i32* %86, i32 %87)
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @truespeech_update_filters(i32* %89, i32* %90, i32 %91)
  %93 = load i32*, i32** %13, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @truespeech_synth(i32* %93, i32* %94, i32 %95)
  %97 = load i32*, i32** %16, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 60
  store i32* %98, i32** %16, align 8
  br label %99

99:                                               ; preds = %81
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %78

102:                                              ; preds = %78
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @truespeech_save_prevvec(i32* %103)
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %64

108:                                              ; preds = %64
  %109 = load i32*, i32** %8, align 8
  store i32 1, i32* %109, align 4
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %108, %48, %34
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @truespeech_read_frame(i32*, i32*) #1

declare dso_local i32 @truespeech_correlate_filter(i32*) #1

declare dso_local i32 @truespeech_filters_merge(i32*) #1

declare dso_local i32 @truespeech_apply_twopoint_filter(i32*, i32) #1

declare dso_local i32 @truespeech_place_pulses(i32*, i32*, i32) #1

declare dso_local i32 @truespeech_update_filters(i32*, i32*, i32) #1

declare dso_local i32 @truespeech_synth(i32*, i32*, i32) #1

declare dso_local i32 @truespeech_save_prevvec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
