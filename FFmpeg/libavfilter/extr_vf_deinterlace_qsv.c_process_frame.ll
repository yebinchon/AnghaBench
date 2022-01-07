; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deinterlace_qsv.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deinterlace_qsv.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__**, %struct.TYPE_24__**, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64, i64, i32, i32, i64* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MFX_PICSTRUCT_PROGRESSIVE = common dso_local global i32 0, align 4
@MFX_WRN_DEVICE_BUSY = common dso_local global i64 0, align 8
@MFX_ERR_MORE_DATA = common dso_local global i64 0, align 8
@QSVDEINT_MORE_INPUT = common dso_local global i32 0, align 4
@MFX_ERR_MORE_SURFACE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error during deinterlacing: %d\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@MFX_WRN_IN_EXECUTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Error synchronizing the operation: %d\0A\00", align 1
@QSVDEINT_MORE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_21__*)* @process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_frame(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %8, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %22, i64 0
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %9, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %27, i64 0
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %10, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__* %30, i32 %33, i32 %36)
  store %struct.TYPE_23__* %37, %struct.TYPE_23__** %11, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %39 = icmp ne %struct.TYPE_23__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %15, align 4
  br label %196

43:                                               ; preds = %3
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 3
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %49, %struct.TYPE_21__** %12, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @MFX_PICSTRUCT_PROGRESSIVE, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %79, %43
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %72 = call i64 @MFXVideoVPP_RunFrameVPPAsync(i32 %69, %struct.TYPE_21__* %70, %struct.TYPE_21__* %71, i32* null, i32** %13)
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* @MFX_WRN_DEVICE_BUSY, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 @av_usleep(i32 1)
  br label %78

78:                                               ; preds = %76, %66
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @MFX_WRN_DEVICE_BUSY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %66, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* @MFX_ERR_MORE_DATA, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = call i32 @av_frame_free(%struct.TYPE_23__** %11)
  %89 = load i32, i32* @QSVDEINT_MORE_INPUT, align 4
  store i32 %89, i32* %4, align 4
  br label %199

90:                                               ; preds = %83
  %91 = load i64, i64* %14, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* @MFX_ERR_MORE_SURFACE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %93, %90
  %98 = load i32*, i32** %13, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @av_log(%struct.TYPE_25__* %101, i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %105, i32* %15, align 4
  br label %196

106:                                              ; preds = %97
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* @MFX_ERR_MORE_SURFACE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 1, i32* %16, align 4
  br label %111

111:                                              ; preds = %110, %106
  br label %112

112:                                              ; preds = %118, %111
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = call i64 @MFXVideoCORE_SyncOperation(i32 %115, i32* %116, i32 1000)
  store i64 %117, i64* %14, align 8
  br label %118

118:                                              ; preds = %112
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* @MFX_WRN_IN_EXECUTION, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %112, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %14, align 8
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = load i64, i64* %14, align 8
  %129 = call i32 @av_log(%struct.TYPE_25__* %126, i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  %130 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %130, i32* %15, align 4
  br label %196

131:                                              ; preds = %122
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %134 = call i32 @av_frame_copy_props(%struct.TYPE_23__* %132, %struct.TYPE_23__* %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %196

138:                                              ; preds = %131
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @av_rescale_q(i64 %153, i32 %156, i32 %159)
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %165, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %138
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %172, align 8
  br label %175

175:                                              ; preds = %170, %138
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %183 = call i32 @ff_filter_frame(%struct.TYPE_24__* %181, %struct.TYPE_23__* %182)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %175
  %187 = load i32, i32* %15, align 4
  store i32 %187, i32* %4, align 4
  br label %199

188:                                              ; preds = %175
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i32, i32* @QSVDEINT_MORE_OUTPUT, align 4
  br label %194

193:                                              ; preds = %188
  br label %194

194:                                              ; preds = %193, %191
  %195 = phi i32 [ %192, %191 ], [ 0, %193 ]
  store i32 %195, i32* %4, align 4
  br label %199

196:                                              ; preds = %137, %125, %100, %40
  %197 = call i32 @av_frame_free(%struct.TYPE_23__** %11)
  %198 = load i32, i32* %15, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %196, %194, %186, %87
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @MFXVideoVPP_RunFrameVPPAsync(i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32**) #1

declare dso_local i32 @av_usleep(i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_23__**) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, i64) #1

declare dso_local i64 @MFXVideoCORE_SyncOperation(i32, i32*, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
