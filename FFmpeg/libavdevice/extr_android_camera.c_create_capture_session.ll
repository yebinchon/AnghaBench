; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_android_camera.c_create_capture_session.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_android_camera.c_create_capture_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__* }

@ACAMERA_OK = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Failed to create capture session output container, error: %s.\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Failed to create capture session container, error: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed to add output to output container, error: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Failed to create camera output target, error: %s.\0A\00", align 1
@TEMPLATE_RECORD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to create capture request, error: %s.\0A\00", align 1
@ACAMERA_CONTROL_AE_TARGET_FPS_RANGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"Failed to set target fps range in capture request, error: %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Failed to add capture request capture request, error: %s.\0A\00", align 1
@capture_session_closed = common dso_local global i32 0, align 4
@capture_session_ready = common dso_local global i32 0, align 4
@capture_session_active = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Failed to create capture session, error: %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Failed to set repeating request on capture session, error: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @create_capture_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_capture_session(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %11 = call i64 @ACaptureSessionOutputContainer_create(i32* %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ACAMERA_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = load i32, i32* @AV_LOG_ERROR, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @camera_status_string(i64 %18)
  %20 = call i32 @av_log(%struct.TYPE_7__* %16, i32 %17, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %21, i32* %2, align 4
  br label %189

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ANativeWindow_acquire(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 8
  %32 = call i64 @ACaptureSessionOutput_create(i32 %29, i32* %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @ACAMERA_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @camera_status_string(i64 %39)
  %41 = call i32 @av_log(%struct.TYPE_7__* %37, i32 %38, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %42, i32* %2, align 4
  br label %189

43:                                               ; preds = %22
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ACaptureSessionOutputContainer_add(i32 %46, i32 %49)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @ACAMERA_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @camera_status_string(i64 %57)
  %59 = call i32 @av_log(%struct.TYPE_7__* %55, i32 %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %60, i32* %2, align 4
  br label %189

61:                                               ; preds = %43
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = call i64 @ACameraOutputTarget_create(i32 %64, i32* %66)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @ACAMERA_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @camera_status_string(i64 %74)
  %76 = call i32 @av_log(%struct.TYPE_7__* %72, i32 %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %77, i32* %2, align 4
  br label %189

78:                                               ; preds = %61
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TEMPLATE_RECORD, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i64 @ACameraDevice_createCaptureRequest(i32 %81, i32 %82, i32* %84)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @ACAMERA_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = load i32, i32* @AV_LOG_ERROR, align 4
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @camera_status_string(i64 %92)
  %94 = call i32 @av_log(%struct.TYPE_7__* %90, i32 %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %95, i32* %2, align 4
  br label %189

96:                                               ; preds = %78
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ACAMERA_CONTROL_AE_TARGET_FPS_RANGE, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @ACaptureRequest_setEntry_i32(i32 %99, i32 %100, i32 2, i32 %103)
  store i64 %104, i64* %5, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @ACAMERA_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %96
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @camera_status_string(i64 %111)
  %113 = call i32 @av_log(%struct.TYPE_7__* %109, i32 %110, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %114, i32* %2, align 4
  br label %189

115:                                              ; preds = %96
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @ACaptureRequest_addTarget(i32 %118, i32 %121)
  store i64 %122, i64* %5, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @ACAMERA_OK, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %115
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = load i32, i32* @AV_LOG_ERROR, align 4
  %129 = load i64, i64* %5, align 8
  %130 = call i32 @camera_status_string(i64 %129)
  %131 = call i32 @av_log(%struct.TYPE_7__* %127, i32 %128, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %132, i32* %2, align 4
  br label %189

133:                                              ; preds = %115
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %137, align 8
  %138 = load i32, i32* @capture_session_closed, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 8
  %142 = load i32, i32* @capture_session_ready, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = load i32, i32* @capture_session_active, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = call i64 @ACameraDevice_createCaptureSession(i32 %152, i32 %155, %struct.TYPE_8__* %157, i32* %159)
  store i64 %160, i64* %5, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* @ACAMERA_OK, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %133
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = load i32, i32* @AV_LOG_ERROR, align 4
  %167 = load i64, i64* %5, align 8
  %168 = call i32 @camera_status_string(i64 %167)
  %169 = call i32 @av_log(%struct.TYPE_7__* %165, i32 %166, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %170, i32* %2, align 4
  br label %189

171:                                              ; preds = %133
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = call i64 @ACameraCaptureSession_setRepeatingRequest(i32 %174, i32* null, i32 1, i32* %176, i32* null)
  store i64 %177, i64* %5, align 8
  %178 = load i64, i64* %5, align 8
  %179 = load i64, i64* @ACAMERA_OK, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %171
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %183 = load i32, i32* @AV_LOG_ERROR, align 4
  %184 = load i64, i64* %5, align 8
  %185 = call i32 @camera_status_string(i64 %184)
  %186 = call i32 @av_log(%struct.TYPE_7__* %182, i32 %183, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %187, i32* %2, align 4
  br label %189

188:                                              ; preds = %171
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %181, %164, %126, %108, %89, %71, %54, %36, %15
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i64 @ACaptureSessionOutputContainer_create(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i32 @camera_status_string(i64) #1

declare dso_local i32 @ANativeWindow_acquire(i32) #1

declare dso_local i64 @ACaptureSessionOutput_create(i32, i32*) #1

declare dso_local i64 @ACaptureSessionOutputContainer_add(i32, i32) #1

declare dso_local i64 @ACameraOutputTarget_create(i32, i32*) #1

declare dso_local i64 @ACameraDevice_createCaptureRequest(i32, i32, i32*) #1

declare dso_local i64 @ACaptureRequest_setEntry_i32(i32, i32, i32, i32) #1

declare dso_local i64 @ACaptureRequest_addTarget(i32, i32) #1

declare dso_local i64 @ACameraDevice_createCaptureSession(i32, i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @ACameraCaptureSession_setRepeatingRequest(i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
