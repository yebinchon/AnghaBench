; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_test_mmal_start_camcorder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_test_mmal_start_camcorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i64, i8*, i32, i32, i32, %struct.TYPE_43__, %struct.TYPE_43__, i32, i32, i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_42__**, %struct.TYPE_42__** }
%struct.TYPE_42__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_44__ = type { i32, i32, %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_46__ = type { i32, i32 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@events = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"MMALCam\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@MMALCAM_INIT_ERROR_EVENT_FLAGS = common dso_local global i64 0, align 8
@zero_copy = common dso_local global i32 0, align 4
@tunneling = common dso_local global i32 0, align 4
@MMALCAM_INIT_ERROR_CAMERA = common dso_local global i64 0, align 8
@MMALCAM_INIT_ERROR_RENDER = common dso_local global i64 0, align 8
@MMALCAM_INIT_ERROR_VIEWFINDER = common dso_local global i64 0, align 8
@MMAL_PARAMETER_CAPTURE = common dso_local global i32 0, align 4
@MMALCAM_INIT_ERROR_ENCODER = common dso_local global i64 0, align 8
@MMAL_ENCODING_JPEG = common dso_local global i64 0, align 8
@MMALCAM_INIT_ERROR_ENCODER_IN = common dso_local global i64 0, align 8
@MMALCAM_INIT_ERROR_ENCODER_OUT = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@MMALCAM_INIT_ERROR_CAMERA_CAPTURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Error opening output file: %s\0A\00", align 1
@MMALCAM_INIT_SUCCESS = common dso_local global i64 0, align 8
@MMAL_CAM_ANY_EVENT = common dso_local global i32 0, align 4
@VCOS_OR_CONSUME = common dso_local global i32 0, align 4
@MMAL_PARAM_FOCUS_MAX = common dso_local global i32 0, align 4
@MMAL_CAM_AUTOFOCUS_COMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Write %d bytes of data from %p\00", align 1
@MAX_PACKET_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"All packets written\0A\00", align 1
@MMAL_PARAMETER_CONTRAST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@MMAL_PARAMETER_BRIGHTNESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@MMAL_PARAMETER_SATURATION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@MMAL_PARAMETER_SHARPNESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"sharpness\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Unexpected change behaviour: %d\00", align 1
@MMAL_PARAMETER_STATISTICS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"Packet count: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_mmal_start_camcorder(i32* %0, %struct.TYPE_47__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_47__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_45__*, align 8
  %13 = alloca %struct.TYPE_45__*, align 8
  %14 = alloca %struct.TYPE_45__*, align 8
  %15 = alloca %struct.TYPE_42__*, align 8
  %16 = alloca %struct.TYPE_42__*, align 8
  %17 = alloca %struct.TYPE_42__*, align 8
  %18 = alloca %struct.TYPE_42__*, align 8
  %19 = alloca %struct.TYPE_42__*, align 8
  %20 = alloca %struct.TYPE_42__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_44__, align 4
  %27 = alloca %struct.TYPE_46__*, align 8
  %28 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_47__* %1, %struct.TYPE_47__** %4, align 8
  %29 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %29, i64* %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %12, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %13, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %14, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %15, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %16, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %17, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %18, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %19, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %20, align 8
  store i32 0, i32* %24, align 4
  store i32* null, i32** %25, align 8
  %30 = call i64 @vcos_event_flags_create(i32* @events, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @VCOS_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i64, i64* @MMALCAM_INIT_ERROR_EVENT_FLAGS, align 8
  %35 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %458

37:                                               ; preds = %2
  %38 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @zero_copy, align 4
  %41 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* @tunneling, align 4
  %44 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %45 = call %struct.TYPE_45__* @test_camera_create(%struct.TYPE_47__* %44, i64* %5)
  store %struct.TYPE_45__* %45, %struct.TYPE_45__** %12, align 8
  %46 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %47 = icmp ne %struct.TYPE_45__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = load i64, i64* @MMALCAM_INIT_ERROR_CAMERA, align 8
  %50 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %458

52:                                               ; preds = %37
  %53 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %55, i64 0
  %57 = load %struct.TYPE_42__*, %struct.TYPE_42__** %56, align 8
  store %struct.TYPE_42__* %57, %struct.TYPE_42__** %15, align 8
  %58 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %60, i64 1
  %62 = load %struct.TYPE_42__*, %struct.TYPE_42__** %61, align 8
  store %struct.TYPE_42__* %62, %struct.TYPE_42__** %16, align 8
  %63 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %65, i64 2
  %67 = load %struct.TYPE_42__*, %struct.TYPE_42__** %66, align 8
  store %struct.TYPE_42__* %67, %struct.TYPE_42__** %17, align 8
  %68 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %69 = call %struct.TYPE_45__* @test_video_render_create(%struct.TYPE_47__* %68, i64* %5)
  store %struct.TYPE_45__* %69, %struct.TYPE_45__** %14, align 8
  %70 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %71 = icmp ne %struct.TYPE_45__* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %52
  %73 = load i64, i64* @MMALCAM_INIT_ERROR_RENDER, align 8
  %74 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %458

76:                                               ; preds = %52
  %77 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %79, i64 0
  %81 = load %struct.TYPE_42__*, %struct.TYPE_42__** %80, align 8
  store %struct.TYPE_42__* %81, %struct.TYPE_42__** %18, align 8
  %82 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %83 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %84 = call i64 @connect_ports(%struct.TYPE_42__* %82, %struct.TYPE_42__* %83, i32** %9, i32** %6)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @MMAL_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load i64, i64* @MMALCAM_INIT_ERROR_VIEWFINDER, align 8
  %90 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %458

92:                                               ; preds = %76
  %93 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %181

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 0
  %99 = load i32, i32* @MMAL_PARAMETER_CAPTURE, align 4
  store i32 %99, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 2
  %102 = bitcast %struct.TYPE_41__* %101 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %102, i8 0, i64 8, i1 false)
  %103 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %104 = call %struct.TYPE_45__* @test_video_encoder_create(%struct.TYPE_47__* %103, i64* %5)
  store %struct.TYPE_45__* %104, %struct.TYPE_45__** %13, align 8
  %105 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %106 = icmp ne %struct.TYPE_45__* %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %97
  %108 = load i64, i64* @MMALCAM_INIT_ERROR_ENCODER, align 8
  %109 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %458

111:                                              ; preds = %97
  %112 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %114, i64 0
  %116 = load %struct.TYPE_42__*, %struct.TYPE_42__** %115, align 8
  store %struct.TYPE_42__* %116, %struct.TYPE_42__** %19, align 8
  %117 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %119, i64 0
  %121 = load %struct.TYPE_42__*, %struct.TYPE_42__** %120, align 8
  store %struct.TYPE_42__* %121, %struct.TYPE_42__** %20, align 8
  %122 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MMAL_ENCODING_JPEG, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %111
  %130 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  store %struct.TYPE_42__* %130, %struct.TYPE_42__** %16, align 8
  br label %131

131:                                              ; preds = %129, %111
  %132 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %133 = load %struct.TYPE_42__*, %struct.TYPE_42__** %19, align 8
  %134 = call i64 @connect_ports(%struct.TYPE_42__* %132, %struct.TYPE_42__* %133, i32** %10, i32** %7)
  store i64 %134, i64* %5, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* @MMAL_SUCCESS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i64, i64* @MMALCAM_INIT_ERROR_ENCODER_IN, align 8
  %140 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  br label %458

142:                                              ; preds = %131
  %143 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %144 = call i64 @setup_output_port(%struct.TYPE_42__* %143, i32** %11, i32** %8)
  store i64 %144, i64* %5, align 8
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @MMAL_SUCCESS, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i64, i64* @MMALCAM_INIT_ERROR_ENCODER_OUT, align 8
  %150 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %458

152:                                              ; preds = %142
  %153 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 1
  %155 = call i64 @mmal_port_parameter_set(%struct.TYPE_42__* %153, i32* %154)
  store i64 %155, i64* %5, align 8
  %156 = load i64, i64* %5, align 8
  %157 = load i64, i64* @MMAL_SUCCESS, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load i64, i64* %5, align 8
  %161 = load i64, i64* @MMAL_ENOSYS, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i64, i64* @MMALCAM_INIT_ERROR_CAMERA_CAPTURE, align 8
  %165 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %458

167:                                              ; preds = %159, %152
  %168 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i32* @fopen(i8* %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %171, i32** %25, align 8
  %172 = load i32*, i32** %25, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @stderr, align 4
  %176 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %174, %167
  br label %181

181:                                              ; preds = %180, %92
  %182 = load i64, i64* @MMALCAM_INIT_SUCCESS, align 8
  %183 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  %185 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %185, i32 0, i32 4
  %187 = call i32 @vcos_semaphore_post(i32* %186)
  %188 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = mul nsw i32 %190, 1000
  store i32 %191, i32* %21, align 4
  %192 = call i32 (...) @vcos_get_ms()
  store i32 %192, i32* %22, align 4
  store i32 1000, i32* %23, align 4
  br label %193

193:                                              ; preds = %181, %410
  %194 = load i32, i32* @MMAL_CAM_ANY_EVENT, align 4
  %195 = load i32, i32* @VCOS_OR_CONSUME, align 4
  %196 = call i32 @VCOS_TICKS_TO_MS(i32 2)
  %197 = call i32 @vcos_event_flags_get(i32* @events, i32 %194, i32 %195, i32 %196, i32* %28)
  %198 = load i32*, i32** %3, align 8
  %199 = load volatile i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %411

202:                                              ; preds = %193
  %203 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @MMAL_PARAM_FOCUS_MAX, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %229

208:                                              ; preds = %202
  %209 = load i32, i32* %28, align 4
  %210 = load i32, i32* @MMAL_CAM_AUTOFOCUS_COMPLETE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %222, label %213

213:                                              ; preds = %208
  %214 = load i32, i32* %23, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %213
  %217 = call i32 (...) @vcos_get_ms()
  %218 = load i32, i32* %22, align 4
  %219 = sub nsw i32 %217, %218
  %220 = load i32, i32* %23, align 4
  %221 = icmp sge i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %216, %208
  store i32 0, i32* %23, align 4
  %223 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %224 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @mmalcam_reset_focus(%struct.TYPE_45__* %223, i32 %226)
  br label %228

228:                                              ; preds = %222, %216, %213
  br label %229

229:                                              ; preds = %228, %202
  %230 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %231 = load i32*, i32** %6, align 8
  %232 = call i64 @fill_port_from_pool(%struct.TYPE_42__* %230, i32* %231)
  store i64 %232, i64* %5, align 8
  %233 = load i64, i64* %5, align 8
  %234 = load i64, i64* @MMAL_SUCCESS, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %229
  br label %411

237:                                              ; preds = %229
  %238 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %239 = load i32*, i32** %7, align 8
  %240 = call i64 @fill_port_from_pool(%struct.TYPE_42__* %238, i32* %239)
  store i64 %240, i64* %5, align 8
  %241 = load i64, i64* %5, align 8
  %242 = load i64, i64* @MMAL_SUCCESS, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  br label %411

245:                                              ; preds = %237
  %246 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %247 = load i32*, i32** %8, align 8
  %248 = call i64 @fill_port_from_pool(%struct.TYPE_42__* %246, i32* %247)
  store i64 %248, i64* %5, align 8
  %249 = load i64, i64* %5, align 8
  %250 = load i64, i64* @MMAL_SUCCESS, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %411

253:                                              ; preds = %245
  %254 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %255 = load i32*, i32** %9, align 8
  %256 = call i64 @send_buffer_from_queue(%struct.TYPE_42__* %254, i32* %255)
  store i64 %256, i64* %5, align 8
  %257 = load i64, i64* %5, align 8
  %258 = load i64, i64* @MMAL_SUCCESS, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  br label %411

261:                                              ; preds = %253
  %262 = load %struct.TYPE_42__*, %struct.TYPE_42__** %19, align 8
  %263 = load i32*, i32** %10, align 8
  %264 = call i64 @send_buffer_from_queue(%struct.TYPE_42__* %262, i32* %263)
  store i64 %264, i64* %5, align 8
  %265 = load i64, i64* %5, align 8
  %266 = load i64, i64* @MMAL_SUCCESS, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %261
  br label %411

269:                                              ; preds = %261
  %270 = load i32*, i32** %11, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %315

272:                                              ; preds = %269
  %273 = load i32*, i32** %11, align 8
  %274 = call %struct.TYPE_46__* @mmal_queue_get(i32* %273)
  store %struct.TYPE_46__* %274, %struct.TYPE_46__** %27, align 8
  %275 = load %struct.TYPE_46__*, %struct.TYPE_46__** %27, align 8
  %276 = icmp ne %struct.TYPE_46__* %275, null
  br i1 %276, label %277, label %314

277:                                              ; preds = %272
  %278 = load i32*, i32** %25, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %311

280:                                              ; preds = %277
  %281 = load %struct.TYPE_46__*, %struct.TYPE_46__** %27, align 8
  %282 = call i32 @mmal_buffer_header_mem_lock(%struct.TYPE_46__* %281)
  %283 = load %struct.TYPE_46__*, %struct.TYPE_46__** %27, align 8
  %284 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_46__*, %struct.TYPE_46__** %27, align 8
  %287 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %285, i32 %288)
  %290 = load %struct.TYPE_46__*, %struct.TYPE_46__** %27, align 8
  %291 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_46__*, %struct.TYPE_46__** %27, align 8
  %294 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32*, i32** %25, align 8
  %297 = call i32 @fwrite(i32 %292, i32 1, i32 %295, i32* %296)
  %298 = load %struct.TYPE_46__*, %struct.TYPE_46__** %27, align 8
  %299 = call i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_46__* %298)
  %300 = load i32, i32* %24, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %24, align 4
  %302 = load i32, i32* %24, align 4
  %303 = load i32, i32* @MAX_PACKET_COUNT, align 4
  %304 = icmp sgt i32 %302, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %280
  %306 = load i32*, i32** %25, align 8
  %307 = call i32 @fclose(i32* %306)
  store i32* null, i32** %25, align 8
  %308 = load i32, i32* @stderr, align 4
  %309 = call i32 (i32, i8*, ...) @fprintf(i32 %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %310

310:                                              ; preds = %305, %280
  br label %311

311:                                              ; preds = %310, %277
  %312 = load %struct.TYPE_46__*, %struct.TYPE_46__** %27, align 8
  %313 = call i32 @mmal_buffer_header_release(%struct.TYPE_46__* %312)
  br label %314

314:                                              ; preds = %311, %272
  br label %315

315:                                              ; preds = %314, %269
  %316 = load i32, i32* %21, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %410

318:                                              ; preds = %315
  %319 = call i32 (...) @vcos_get_ms()
  %320 = load i32, i32* %22, align 4
  %321 = sub nsw i32 %319, %320
  %322 = load i32, i32* %21, align 4
  %323 = icmp sge i32 %321, %322
  br i1 %323, label %324, label %409

324:                                              ; preds = %318
  %325 = call i32 (...) @vcos_get_ms()
  store i32 %325, i32* %22, align 4
  %326 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  switch i32 %328, label %403 [
    i32 132, label %329
    i32 131, label %336
    i32 128, label %343
    i32 134, label %350
    i32 135, label %357
    i32 133, label %364
    i32 136, label %371
    i32 137, label %379
    i32 130, label %387
    i32 129, label %395
  ]

329:                                              ; preds = %324
  %330 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %331 = call i32 @mmalcam_next_effect(%struct.TYPE_45__* %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %329
  %334 = load i32*, i32** %3, align 8
  store volatile i32 1, i32* %334, align 4
  br label %335

335:                                              ; preds = %333, %329
  br label %408

336:                                              ; preds = %324
  %337 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %338 = call i32 @mmalcam_next_rotation(%struct.TYPE_45__* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %336
  %341 = load i32*, i32** %3, align 8
  store volatile i32 1, i32* %341, align 4
  br label %342

342:                                              ; preds = %340, %336
  br label %408

343:                                              ; preds = %324
  %344 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %345 = call i32 @mmalcam_next_zoom(%struct.TYPE_45__* %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %343
  %348 = load i32*, i32** %3, align 8
  store volatile i32 1, i32* %348, align 4
  br label %349

349:                                              ; preds = %347, %343
  br label %408

350:                                              ; preds = %324
  %351 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %352 = call i32 @mmalcam_next_focus(%struct.TYPE_45__* %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %356, label %354

354:                                              ; preds = %350
  %355 = load i32*, i32** %3, align 8
  store volatile i32 1, i32* %355, align 4
  br label %356

356:                                              ; preds = %354, %350
  br label %408

357:                                              ; preds = %324
  %358 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %359 = call i32 @mmalcam_next_drc(%struct.TYPE_45__* %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %357
  %362 = load i32*, i32** %3, align 8
  store volatile i32 1, i32* %362, align 4
  br label %363

363:                                              ; preds = %361, %357
  br label %408

364:                                              ; preds = %324
  %365 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %366 = call i32 @mmalcam_next_hdr(%struct.TYPE_45__* %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %364
  %369 = load i32*, i32** %3, align 8
  store volatile i32 1, i32* %369, align 4
  br label %370

370:                                              ; preds = %368, %364
  br label %408

371:                                              ; preds = %324
  %372 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %373 = load i32, i32* @MMAL_PARAMETER_CONTRAST, align 4
  %374 = call i32 @mmalcam_next_colour_param(%struct.TYPE_45__* %372, i32 %373, i32 -100, i32 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %371
  %377 = load i32*, i32** %3, align 8
  store volatile i32 1, i32* %377, align 4
  br label %378

378:                                              ; preds = %376, %371
  br label %408

379:                                              ; preds = %324
  %380 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %381 = load i32, i32* @MMAL_PARAMETER_BRIGHTNESS, align 4
  %382 = call i32 @mmalcam_next_colour_param(%struct.TYPE_45__* %380, i32 %381, i32 0, i32 100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %386, label %384

384:                                              ; preds = %379
  %385 = load i32*, i32** %3, align 8
  store volatile i32 1, i32* %385, align 4
  br label %386

386:                                              ; preds = %384, %379
  br label %408

387:                                              ; preds = %324
  %388 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %389 = load i32, i32* @MMAL_PARAMETER_SATURATION, align 4
  %390 = call i32 @mmalcam_next_colour_param(%struct.TYPE_45__* %388, i32 %389, i32 -100, i32 100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %394, label %392

392:                                              ; preds = %387
  %393 = load i32*, i32** %3, align 8
  store volatile i32 1, i32* %393, align 4
  br label %394

394:                                              ; preds = %392, %387
  br label %408

395:                                              ; preds = %324
  %396 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %397 = load i32, i32* @MMAL_PARAMETER_SHARPNESS, align 4
  %398 = call i32 @mmalcam_next_colour_param(%struct.TYPE_45__* %396, i32 %397, i32 -100, i32 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %402, label %400

400:                                              ; preds = %395
  %401 = load i32*, i32** %3, align 8
  store volatile i32 1, i32* %401, align 4
  br label %402

402:                                              ; preds = %400, %395
  br label %408

403:                                              ; preds = %324
  %404 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %406)
  br label %408

408:                                              ; preds = %403, %402, %394, %386, %378, %370, %363, %356, %349, %342, %335
  br label %409

409:                                              ; preds = %408, %318
  br label %410

410:                                              ; preds = %409, %315
  br label %193

411:                                              ; preds = %268, %260, %252, %244, %236, %201
  %412 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %413 = call i32 @disable_port(%struct.TYPE_42__* %412)
  %414 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %415 = call i32 @disable_port(%struct.TYPE_42__* %414)
  %416 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %417 = call i32 @disable_port(%struct.TYPE_42__* %416)
  %418 = load %struct.TYPE_42__*, %struct.TYPE_42__** %19, align 8
  %419 = call i32 @disable_port(%struct.TYPE_42__* %418)
  %420 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %421 = call i32 @disable_port(%struct.TYPE_42__* %420)
  %422 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %423 = call i32 @mmal_component_disable(%struct.TYPE_45__* %422)
  %424 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %425 = icmp ne %struct.TYPE_45__* %424, null
  br i1 %425, label %426, label %429

426:                                              ; preds = %411
  %427 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %428 = call i32 @mmal_component_disable(%struct.TYPE_45__* %427)
  br label %429

429:                                              ; preds = %426, %411
  %430 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %431 = call i32 @mmal_component_disable(%struct.TYPE_45__* %430)
  %432 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %432, i32 0, i32 6
  %434 = load i32, i32* @MMAL_PARAMETER_STATISTICS, align 4
  %435 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %433, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @INIT_PARAMETER(i32 %436, i32 %434)
  %438 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %439 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %439, i32 0, i32 6
  %441 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %440, i32 0, i32 0
  %442 = call i32 @mmal_port_parameter_get(%struct.TYPE_42__* %438, i32* %441)
  %443 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %444 = icmp ne %struct.TYPE_45__* %443, null
  br i1 %444, label %445, label %457

445:                                              ; preds = %429
  %446 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %447 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %446, i32 0, i32 5
  %448 = load i32, i32* @MMAL_PARAMETER_STATISTICS, align 4
  %449 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %447, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @INIT_PARAMETER(i32 %450, i32 %448)
  %452 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %453 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %453, i32 0, i32 5
  %455 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %454, i32 0, i32 0
  %456 = call i32 @mmal_port_parameter_get(%struct.TYPE_42__* %452, i32* %455)
  br label %457

457:                                              ; preds = %445, %429
  br label %458

458:                                              ; preds = %457, %163, %148, %138, %107, %88, %72, %48, %33
  %459 = load i32*, i32** %6, align 8
  %460 = icmp ne i32* %459, null
  br i1 %460, label %461, label %465

461:                                              ; preds = %458
  %462 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %463 = load i32*, i32** %6, align 8
  %464 = call i32 @mmal_port_pool_destroy(%struct.TYPE_42__* %462, i32* %463)
  br label %465

465:                                              ; preds = %461, %458
  %466 = load i32*, i32** %7, align 8
  %467 = icmp ne i32* %466, null
  br i1 %467, label %468, label %472

468:                                              ; preds = %465
  %469 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %470 = load i32*, i32** %7, align 8
  %471 = call i32 @mmal_port_pool_destroy(%struct.TYPE_42__* %469, i32* %470)
  br label %472

472:                                              ; preds = %468, %465
  %473 = load i32*, i32** %8, align 8
  %474 = icmp ne i32* %473, null
  br i1 %474, label %475, label %479

475:                                              ; preds = %472
  %476 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %477 = load i32*, i32** %8, align 8
  %478 = call i32 @mmal_port_pool_destroy(%struct.TYPE_42__* %476, i32* %477)
  br label %479

479:                                              ; preds = %475, %472
  %480 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %481 = icmp ne %struct.TYPE_45__* %480, null
  br i1 %481, label %482, label %485

482:                                              ; preds = %479
  %483 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %484 = call i32 @mmal_component_destroy(%struct.TYPE_45__* %483)
  br label %485

485:                                              ; preds = %482, %479
  %486 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %487 = icmp ne %struct.TYPE_45__* %486, null
  br i1 %487, label %488, label %491

488:                                              ; preds = %485
  %489 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %490 = call i32 @mmal_component_destroy(%struct.TYPE_45__* %489)
  br label %491

491:                                              ; preds = %488, %485
  %492 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %493 = icmp ne %struct.TYPE_45__* %492, null
  br i1 %493, label %494, label %497

494:                                              ; preds = %491
  %495 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %496 = call i32 @mmal_component_destroy(%struct.TYPE_45__* %495)
  br label %497

497:                                              ; preds = %494, %491
  %498 = load i32*, i32** %9, align 8
  %499 = icmp ne i32* %498, null
  br i1 %499, label %500, label %503

500:                                              ; preds = %497
  %501 = load i32*, i32** %9, align 8
  %502 = call i32 @mmal_queue_destroy(i32* %501)
  br label %503

503:                                              ; preds = %500, %497
  %504 = load i32*, i32** %10, align 8
  %505 = icmp ne i32* %504, null
  br i1 %505, label %506, label %509

506:                                              ; preds = %503
  %507 = load i32*, i32** %10, align 8
  %508 = call i32 @mmal_queue_destroy(i32* %507)
  br label %509

509:                                              ; preds = %506, %503
  %510 = load i32*, i32** %11, align 8
  %511 = icmp ne i32* %510, null
  br i1 %511, label %512, label %515

512:                                              ; preds = %509
  %513 = load i32*, i32** %11, align 8
  %514 = call i32 @mmal_queue_destroy(i32* %513)
  br label %515

515:                                              ; preds = %512, %509
  %516 = load i32*, i32** %25, align 8
  %517 = icmp ne i32* %516, null
  br i1 %517, label %518, label %521

518:                                              ; preds = %515
  %519 = load i32*, i32** %25, align 8
  %520 = call i32 @fclose(i32* %519)
  br label %521

521:                                              ; preds = %518, %515
  %522 = call i32 @vcos_event_flags_delete(i32* @events)
  %523 = load i32, i32* %24, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %528

525:                                              ; preds = %521
  %526 = load i32, i32* %24, align 4
  %527 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %526)
  br label %528

528:                                              ; preds = %525, %521
  %529 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = load i64, i64* @MMALCAM_INIT_SUCCESS, align 8
  %533 = icmp ne i64 %531, %532
  br i1 %533, label %534, label %538

534:                                              ; preds = %528
  %535 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %536 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %535, i32 0, i32 4
  %537 = call i32 @vcos_semaphore_post(i32* %536)
  br label %538

538:                                              ; preds = %534, %528
  %539 = load i64, i64* %5, align 8
  %540 = trunc i64 %539 to i32
  ret i32 %540
}

declare dso_local i64 @vcos_event_flags_create(i32*, i8*) #1

declare dso_local %struct.TYPE_45__* @test_camera_create(%struct.TYPE_47__*, i64*) #1

declare dso_local %struct.TYPE_45__* @test_video_render_create(%struct.TYPE_47__*, i64*) #1

declare dso_local i64 @connect_ports(%struct.TYPE_42__*, %struct.TYPE_42__*, i32**, i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_45__* @test_video_encoder_create(%struct.TYPE_47__*, i64*) #1

declare dso_local i64 @setup_output_port(%struct.TYPE_42__*, i32**, i32**) #1

declare dso_local i64 @mmal_port_parameter_set(%struct.TYPE_42__*, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

declare dso_local i32 @vcos_get_ms(...) #1

declare dso_local i32 @vcos_event_flags_get(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @VCOS_TICKS_TO_MS(i32) #1

declare dso_local i32 @mmalcam_reset_focus(%struct.TYPE_45__*, i32) #1

declare dso_local i64 @fill_port_from_pool(%struct.TYPE_42__*, i32*) #1

declare dso_local i64 @send_buffer_from_queue(%struct.TYPE_42__*, i32*) #1

declare dso_local %struct.TYPE_46__* @mmal_queue_get(i32*) #1

declare dso_local i32 @mmal_buffer_header_mem_lock(%struct.TYPE_46__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, ...) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @mmal_buffer_header_mem_unlock(%struct.TYPE_46__*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_46__*) #1

declare dso_local i32 @mmalcam_next_effect(%struct.TYPE_45__*) #1

declare dso_local i32 @mmalcam_next_rotation(%struct.TYPE_45__*) #1

declare dso_local i32 @mmalcam_next_zoom(%struct.TYPE_45__*) #1

declare dso_local i32 @mmalcam_next_focus(%struct.TYPE_45__*) #1

declare dso_local i32 @mmalcam_next_drc(%struct.TYPE_45__*) #1

declare dso_local i32 @mmalcam_next_hdr(%struct.TYPE_45__*) #1

declare dso_local i32 @mmalcam_next_colour_param(%struct.TYPE_45__*, i32, i32, i32, i8*) #1

declare dso_local i32 @disable_port(%struct.TYPE_42__*) #1

declare dso_local i32 @mmal_component_disable(%struct.TYPE_45__*) #1

declare dso_local i32 @INIT_PARAMETER(i32, i32) #1

declare dso_local i32 @mmal_port_parameter_get(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @mmal_port_pool_destroy(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_45__*) #1

declare dso_local i32 @mmal_queue_destroy(i32*) #1

declare dso_local i32 @vcos_event_flags_delete(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
