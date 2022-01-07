; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i64* }

@SUBFRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32*)* @encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_frame(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1, %struct.TYPE_27__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %10, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ff_alloc_packet2(%struct.TYPE_28__* %17, %struct.TYPE_26__* %18, i32 %21, i32 0)
  store i32 %22, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %133

26:                                               ; preds = %4
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %11, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @subband_transform(%struct.TYPE_25__* %33, i32* %34)
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @lfe_downsample(%struct.TYPE_25__* %41, i32* %42)
  br label %44

44:                                               ; preds = %40, %26
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @calc_masking(%struct.TYPE_25__* %45, i32* %46)
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %55 = call i32 @adpcm_analysis(%struct.TYPE_25__* %54)
  br label %56

56:                                               ; preds = %53, %44
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %58 = call i32 @find_peaks(%struct.TYPE_25__* %57)
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %60 = call i32 @assign_bits(%struct.TYPE_25__* %59)
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %62 = call i32 @calc_lfe_scales(%struct.TYPE_25__* %61)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @shift_history(%struct.TYPE_25__* %63, i32* %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @init_put_bits(i32* %67, i32 %70, i32 %73)
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %76 = call i32 @fill_in_adpcm_bufer(%struct.TYPE_25__* %75)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %78 = call i32 @put_frame_header(%struct.TYPE_25__* %77)
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %80 = call i32 @put_primary_audio_header(%struct.TYPE_25__* %79)
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %89, %56
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @SUBFRAMES, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @put_subframe(%struct.TYPE_25__* %86, i32 %87)
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %81

92:                                               ; preds = %81
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = call i32 @put_bits_count(i32* %94)
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %107, %92
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 8, %100
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = call i32 @put_bits(i32* %105, i32 1, i32 0)
  br label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %96

110:                                              ; preds = %96
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = call i32 @flush_put_bits(i32* %112)
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ff_samples_to_time_base(%struct.TYPE_28__* %119, i32 %122)
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  %128 = call i32 @put_bits_count(i32* %127)
  %129 = ashr i32 %128, 3
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %9, align 8
  store i32 1, i32* %132, align 4
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %110, %24
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_28__*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @subband_transform(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @lfe_downsample(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @calc_masking(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @adpcm_analysis(%struct.TYPE_25__*) #1

declare dso_local i32 @find_peaks(%struct.TYPE_25__*) #1

declare dso_local i32 @assign_bits(%struct.TYPE_25__*) #1

declare dso_local i32 @calc_lfe_scales(%struct.TYPE_25__*) #1

declare dso_local i32 @shift_history(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @init_put_bits(i32*, i32, i32) #1

declare dso_local i32 @fill_in_adpcm_bufer(%struct.TYPE_25__*) #1

declare dso_local i32 @put_frame_header(%struct.TYPE_25__*) #1

declare dso_local i32 @put_primary_audio_header(%struct.TYPE_25__*) #1

declare dso_local i32 @put_subframe(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @ff_samples_to_time_base(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
