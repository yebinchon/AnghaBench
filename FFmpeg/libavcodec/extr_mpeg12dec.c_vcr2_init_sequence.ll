; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_vcr2_init_sequence.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_vcr2_init_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_13__*, i32, i64, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32* }

@FMT_MPEG1 = common dso_local global i32 0, align 4
@ff_mpeg1_default_intra_matrix = common dso_local global i32* null, align 8
@ff_mpeg1_default_non_intra_matrix = common dso_local global i32* null, align 8
@PICT_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"BW10\00", align 1
@AV_CODEC_ID_MPEG1VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @vcr2_init_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcr2_init_sequence(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %5, align 8
  %15 = load i32, i32* @FMT_MPEG1, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 18
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = call i32 @ff_mpv_common_end(%struct.TYPE_14__* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = call i32 @mpeg_get_pixelformat(%struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = call i32 @setup_hwaccel_for_pixfmt(%struct.TYPE_16__* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = call i32 @ff_mpv_idct_init(%struct.TYPE_14__* %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = call i32 @ff_mpv_common_init(%struct.TYPE_14__* %50)
  store i32 %51, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %27
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %164

55:                                               ; preds = %27
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %108, %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 64
  br i1 %60, label %61, label %111

61:                                               ; preds = %58
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 17
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32*, i32** @ff_mpeg1_default_intra_matrix, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load i32*, i32** @ff_mpeg1_default_non_intra_matrix, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %61
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %58

111:                                              ; preds = %58
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 5
  store i32 1, i32* %113, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 6
  store i32 1, i32* %115, align 4
  %116 = load i32, i32* @PICT_FRAME, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 16
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 15
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 7
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 8
  store i32 1, i32* %124, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %111
  %131 = load i32, i32* @AV_CODEC_ID_MPEG1VIDEO, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 13
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 14
  store i32 %131, i32* %137, align 8
  br label %148

138:                                              ; preds = %111
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 10
  store i32 1, i32* %140, align 8
  %141 = load i32, i32* @AV_CODEC_ID_MPEG2VIDEO, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 13
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 14
  store i32 %141, i32* %147, align 8
  br label %148

148:                                              ; preds = %138, %130
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 11
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %148, %53
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @ff_mpv_common_end(%struct.TYPE_14__*) #1

declare dso_local i32 @mpeg_get_pixelformat(%struct.TYPE_16__*) #1

declare dso_local i32 @setup_hwaccel_for_pixfmt(%struct.TYPE_16__*) #1

declare dso_local i32 @ff_mpv_idct_init(%struct.TYPE_14__*) #1

declare dso_local i32 @ff_mpv_common_init(%struct.TYPE_14__*) #1

declare dso_local i64 @AV_RL32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
