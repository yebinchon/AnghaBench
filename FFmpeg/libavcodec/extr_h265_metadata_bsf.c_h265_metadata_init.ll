; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h265_metadata_bsf.c_h265_metadata_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h265_metadata_bsf.c_h265_metadata_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32 }

@AV_CODEC_ID_HEVC = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to read extradata.\0A\00", align 1
@LEVEL_AUTO = common dso_local global i64 0, align 8
@HEVC_NAL_VPS = common dso_local global i64 0, align 8
@HEVC_NAL_SPS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to write extradata.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @h265_metadata_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h265_metadata_init(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %4, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = load i32, i32* @AV_CODEC_ID_HEVC, align 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = call i32 @ff_cbs_init(i32* %14, i32 %15, %struct.TYPE_20__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %141

22:                                               ; preds = %1
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %133

29:                                               ; preds = %22
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = call i32 @ff_cbs_read_extradata(i32 %32, %struct.TYPE_19__* %33, %struct.TYPE_16__* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = call i32 @av_log(%struct.TYPE_20__* %41, i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %134

44:                                               ; preds = %29
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LEVEL_AUTO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = call i32 @h265_metadata_guess_level(%struct.TYPE_20__* %51, %struct.TYPE_19__* %52)
  br label %54

54:                                               ; preds = %50, %44
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %114, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %117

61:                                               ; preds = %55
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HEVC_NAL_VPS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %61
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @h265_metadata_update_vps(%struct.TYPE_20__* %73, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %134

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86, %61
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @HEVC_NAL_SPS, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %87
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @h265_metadata_update_sps(%struct.TYPE_20__* %99, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %134

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112, %87
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %55

117:                                              ; preds = %55
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %125 = call i32 @ff_cbs_write_extradata(i32 %120, i32 %123, %struct.TYPE_19__* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = call i32 @av_log(%struct.TYPE_20__* %129, i32 %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %134

132:                                              ; preds = %117
  br label %133

133:                                              ; preds = %132, %22
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %128, %111, %85, %40
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %139 = call i32 @ff_cbs_fragment_reset(i32 %137, %struct.TYPE_19__* %138)
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %134, %20
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @ff_cbs_init(i32*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ff_cbs_read_extradata(i32, %struct.TYPE_19__*, %struct.TYPE_16__*) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @h265_metadata_guess_level(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @h265_metadata_update_vps(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @h265_metadata_update_sps(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ff_cbs_write_extradata(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ff_cbs_fragment_reset(i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
