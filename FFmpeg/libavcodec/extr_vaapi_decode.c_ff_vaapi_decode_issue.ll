; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_decode.c_ff_vaapi_decode_issue.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_decode.c_ff_vaapi_decode_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Decode to surface %#x.\0A\00", align 1
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to begin picture decode issue: %d (%s).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to upload decode parameters: %d (%s).\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to upload slices: %d (%s).\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to end picture decode issue: %d (%s).\0A\00", align 1
@CONFIG_VAAPI_1 = common dso_local global i64 0, align 8
@AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"Failed to end picture decode after error: %d (%s).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vaapi_decode_issue(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = load i32, i32* @AV_LOG_DEBUG, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = call i32 (%struct.TYPE_15__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_15__* %13, i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @vaBeginPicture(i32 %24, i32 %27, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @vaErrorStr(i64 %39)
  %41 = call i32 (%struct.TYPE_15__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_15__* %36, i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %38, i32 %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %7, align 4
  br label %153

44:                                               ; preds = %2
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @vaRenderPicture(i32 %49, i32 %52, i32 %55, i32 %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %44
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @vaErrorStr(i64 %67)
  %69 = call i32 (%struct.TYPE_15__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_15__* %64, i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %66, i32 %68)
  %70 = load i32, i32* @EIO, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %7, align 4
  br label %153

72:                                               ; preds = %44
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 2, %86
  %88 = call i64 @vaRenderPicture(i32 %77, i32 %80, i32 %83, i32 %87)
  store i64 %88, i64* %6, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %72
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @vaErrorStr(i64 %96)
  %98 = call i32 (%struct.TYPE_15__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_15__* %93, i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %95, i32 %97)
  %99 = load i32, i32* @EIO, align 4
  %100 = call i32 @AVERROR(i32 %99)
  store i32 %100, i32* %7, align 4
  br label %153

101:                                              ; preds = %72
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @vaEndPicture(i32 %106, i32 %109)
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %101
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %116 = load i32, i32* @AV_LOG_ERROR, align 4
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @vaErrorStr(i64 %118)
  %120 = call i32 (%struct.TYPE_15__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_15__* %115, i32 %116, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %117, i32 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = call i32 @AVERROR(i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i64, i64* @CONFIG_VAAPI_1, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %114
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125, %114
  br label %174

135:                                              ; preds = %125
  br label %178

136:                                              ; preds = %101
  %137 = load i64, i64* @CONFIG_VAAPI_1, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %136
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %139, %136
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %151 = call i32 @ff_vaapi_decode_destroy_buffers(%struct.TYPE_15__* %149, %struct.TYPE_13__* %150)
  br label %152

152:                                              ; preds = %148, %139
  store i32 0, i32* %7, align 4
  br label %179

153:                                              ; preds = %92, %63, %35
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @vaEndPicture(i32 %158, i32 %161)
  store i64 %162, i64* %6, align 8
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %153
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %168 = load i32, i32* @AV_LOG_ERROR, align 4
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* %6, align 8
  %171 = call i32 @vaErrorStr(i64 %170)
  %172 = call i32 (%struct.TYPE_15__*, i32, i8*, i64, ...) @av_log(%struct.TYPE_15__* %167, i32 %168, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 %169, i32 %171)
  br label %173

173:                                              ; preds = %166, %153
  br label %174

174:                                              ; preds = %173, %134
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %177 = call i32 @ff_vaapi_decode_destroy_buffers(%struct.TYPE_15__* %175, %struct.TYPE_13__* %176)
  br label %178

178:                                              ; preds = %174, %135
  br label %179

179:                                              ; preds = %178, %152
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  store i32 0, i32* %181, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  store i32 0, i32* %183, align 4
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 3
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 2
  %188 = call i32 @av_freep(i32* %187)
  %189 = load i32, i32* %7, align 4
  ret i32 %189
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i64, ...) #1

declare dso_local i64 @vaBeginPicture(i32, i32, i32) #1

declare dso_local i32 @vaErrorStr(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @vaRenderPicture(i32, i32, i32, i32) #1

declare dso_local i64 @vaEndPicture(i32, i32) #1

declare dso_local i32 @ff_vaapi_decode_destroy_buffers(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @av_freep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
