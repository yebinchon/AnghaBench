; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStillYUV.c_create_camera_component.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStillYUV.c_create_camera_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i64, %struct.TYPE_37__, %struct.TYPE_44__*, i32*, %struct.TYPE_46__, %struct.TYPE_48__, i64 }
%struct.TYPE_37__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_44__ = type { %struct.TYPE_39__*, %struct.TYPE_39__**, i32 }
%struct.TYPE_39__ = type { i64, i64, i64, i64, i64, %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i64, %struct.TYPE_35__*, i8* }
%struct.TYPE_35__ = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { %struct.TYPE_53__, %struct.TYPE_52__, i8*, i8* }
%struct.TYPE_53__ = type { i32, i32 }
%struct.TYPE_52__ = type { i32, i32, i64, i64 }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_40__ = type { i32, i32, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_42__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32, i32 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_51__, %struct.TYPE_50__, %struct.TYPE_49__ }
%struct.TYPE_51__ = type { i32, i32 }
%struct.TYPE_50__ = type { i32, i32 }
%struct.TYPE_49__ = type { i32, i32 }

@MMAL_COMPONENT_DEFAULT_CAMERA = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to create camera component\00", align 1
@MMAL_PARAMETER_CAMERA_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not select camera : error %d\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Camera doesn't have output ports\00", align 1
@MMAL_PARAMETER_CAMERA_CUSTOM_SENSOR_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Could not set sensor mode : error %d\00", align 1
@MMAL_CAMERA_PREVIEW_PORT = common dso_local global i64 0, align 8
@MMAL_CAMERA_VIDEO_PORT = common dso_local global i64 0, align 8
@MMAL_CAMERA_CAPTURE_PORT = common dso_local global i64 0, align 8
@default_camera_control_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Unable to enable control port : error %d\00", align 1
@MMAL_PARAM_TIMESTAMP_MODE_RESET_STC = common dso_local global i32 0, align 4
@MMAL_ENCODING_OPAQUE = common dso_local global i64 0, align 8
@MMAL_ENCODING_I420 = common dso_local global i8* null, align 8
@MMAL_PARAMETER_FPS_RANGE = common dso_local global i32 0, align 4
@FULL_RES_PREVIEW_FRAME_RATE_NUM = common dso_local global i32 0, align 4
@FULL_RES_PREVIEW_FRAME_RATE_DEN = common dso_local global i32 0, align 4
@PREVIEW_FRAME_RATE_NUM = common dso_local global i32 0, align 4
@PREVIEW_FRAME_RATE_DEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"camera viewfinder format couldn't be set\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"camera video format couldn't be set\00", align 1
@VIDEO_OUTPUT_BUFFERS_NUM = common dso_local global i64 0, align 8
@MMAL_ENCODING_RGB24 = common dso_local global i64 0, align 8
@MMAL_ENCODING_BGR24 = common dso_local global i64 0, align 8
@STILLS_FRAME_RATE_NUM = common dso_local global i32 0, align 4
@STILLS_FRAME_RATE_DEN = common dso_local global i32 0, align 4
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to select zero copy\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"camera still format couldn't be set\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"camera component couldn't be enabled\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Failed to create buffer header pool for camera still port %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Camera component done\0A\00", align 1
@MMAL_PARAMETER_CAMERA_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_38__*)* @create_camera_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_camera_component(%struct.TYPE_38__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_38__*, align 8
  %4 = alloca %struct.TYPE_44__*, align 8
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_40__, align 4
  %12 = alloca %struct.TYPE_42__, align 4
  %13 = alloca %struct.TYPE_41__, align 4
  %14 = alloca %struct.TYPE_41__, align 4
  %15 = alloca %struct.TYPE_41__, align 4
  %16 = alloca %struct.TYPE_41__, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %3, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %4, align 8
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %6, align 8
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %7, align 8
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %8, align 8
  %17 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CAMERA, align 4
  %18 = call i64 @mmal_component_create(i32 %17, %struct.TYPE_44__** %4)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @MMAL_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %615

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %26 = load i32, i32* @MMAL_PARAMETER_CAMERA_NUM, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 1
  %28 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %27, align 4
  %32 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 2
  %33 = bitcast %struct.TYPE_36__* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 8, i1 false)
  %34 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_39__*, %struct.TYPE_39__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %11, i32 0, i32 0
  %38 = call i64 @mmal_port_parameter_set(%struct.TYPE_39__* %36, i32* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @MMAL_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load i64, i64* %9, align 8
  %44 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %615

45:                                               ; preds = %24
  %46 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %51, i64* %9, align 8
  %52 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %615

53:                                               ; preds = %45
  %54 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_39__*, %struct.TYPE_39__** %55, align 8
  %57 = load i32, i32* @MMAL_PARAMETER_CAMERA_CUSTOM_SENSOR_CONFIG, align 4
  %58 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @mmal_port_parameter_set_uint32(%struct.TYPE_39__* %56, i32 %57, i32 %61)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @MMAL_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i64, i64* %9, align 8
  %68 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %67)
  br label %615

69:                                               ; preds = %53
  %70 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %71, align 8
  %73 = load i64, i64* @MMAL_CAMERA_PREVIEW_PORT, align 8
  %74 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %72, i64 %73
  %75 = load %struct.TYPE_39__*, %struct.TYPE_39__** %74, align 8
  store %struct.TYPE_39__* %75, %struct.TYPE_39__** %6, align 8
  %76 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %77, align 8
  %79 = load i64, i64* @MMAL_CAMERA_VIDEO_PORT, align 8
  %80 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %78, i64 %79
  %81 = load %struct.TYPE_39__*, %struct.TYPE_39__** %80, align 8
  store %struct.TYPE_39__* %81, %struct.TYPE_39__** %7, align 8
  %82 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %83, align 8
  %85 = load i64, i64* @MMAL_CAMERA_CAPTURE_PORT, align 8
  %86 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %84, i64 %85
  %87 = load %struct.TYPE_39__*, %struct.TYPE_39__** %86, align 8
  store %struct.TYPE_39__* %87, %struct.TYPE_39__** %8, align 8
  %88 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_39__*, %struct.TYPE_39__** %89, align 8
  %91 = load i32, i32* @default_camera_control_callback, align 4
  %92 = call i64 @mmal_port_enable(%struct.TYPE_39__* %90, i32 %91)
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @MMAL_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %69
  %97 = load i64, i64* %9, align 8
  %98 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  br label %615

99:                                               ; preds = %69
  %100 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 0
  store i32 1, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 1
  store i32 3, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 2
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 3
  %104 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %103, align 4
  %109 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 4
  %110 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %109, align 4
  %115 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 5
  %116 = load i32, i32* @MMAL_PARAM_TIMESTAMP_MODE_RESET_STC, align 4
  store i32 %116, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 6
  store i32 0, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 7
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 8
  store i32 0, i32* %119, align 4
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 9
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %120, align 4
  %125 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 10
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %125, align 4
  %130 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 11
  %131 = bitcast %struct.TYPE_45__* %130 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %131, i8 0, i64 8, i1 false)
  %132 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %99
  %137 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 4
  store i32 %140, i32* %141, align 4
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 3
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %136, %99
  %148 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_39__*, %struct.TYPE_39__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 2
  %152 = call i64 @mmal_port_parameter_set(%struct.TYPE_39__* %150, i32* %151)
  %153 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %154 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %154, i32 0, i32 4
  %156 = call i32 @raspicamcontrol_set_all_parameters(%struct.TYPE_44__* %153, %struct.TYPE_46__* %155)
  %157 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %157, i32 0, i32 5
  %159 = load %struct.TYPE_43__*, %struct.TYPE_43__** %158, align 8
  store %struct.TYPE_43__* %159, %struct.TYPE_43__** %5, align 8
  %160 = load i64, i64* @MMAL_ENCODING_OPAQUE, align 8
  %161 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i8*, i8** @MMAL_ENCODING_I420, align 8
  %164 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 6000000
  br i1 %170, label %171, label %185

171:                                              ; preds = %147
  %172 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %13, i32 0, i32 0
  %173 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  store i32 %173, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %13, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %174, i32 0, i32 0
  store i32 50, i32* %175, align 4
  %176 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %174, i32 0, i32 1
  store i32 1000, i32* %176, align 4
  %177 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %13, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %177, i32 0, i32 0
  store i32 166, i32* %178, align 4
  %179 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %177, i32 0, i32 1
  store i32 1000, i32* %179, align 4
  %180 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %13, i32 0, i32 3
  %181 = bitcast %struct.TYPE_49__* %180 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %181, i8 0, i64 8, i1 false)
  %182 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %13, i32 0, i32 0
  %184 = call i64 @mmal_port_parameter_set(%struct.TYPE_39__* %182, i32* %183)
  br label %206

185:                                              ; preds = %147
  %186 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp sgt i32 %189, 1000000
  br i1 %190, label %191, label %205

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 0
  %193 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  store i32 %193, i32* %192, align 4
  %194 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %194, i32 0, i32 0
  store i32 166, i32* %195, align 4
  %196 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %194, i32 0, i32 1
  store i32 1000, i32* %196, align 4
  %197 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %197, i32 0, i32 0
  store i32 999, i32* %198, align 4
  %199 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %197, i32 0, i32 1
  store i32 1000, i32* %199, align 4
  %200 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 3
  %201 = bitcast %struct.TYPE_49__* %200 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %201, i8 0, i64 8, i1 false)
  %202 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 0
  %204 = call i64 @mmal_port_parameter_set(%struct.TYPE_39__* %202, i32* %203)
  br label %205

205:                                              ; preds = %191, %185
  br label %206

206:                                              ; preds = %205, %171
  %207 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %278

211:                                              ; preds = %206
  %212 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i8* @VCOS_ALIGN_UP(i32 %215, i32 32)
  %217 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_35__*, %struct.TYPE_35__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %220, i32 0, i32 3
  store i8* %216, i8** %221, align 8
  %222 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i8* @VCOS_ALIGN_UP(i32 %225, i32 16)
  %227 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %230, i32 0, i32 2
  store i8* %226, i8** %231, align 8
  %232 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %236, i32 0, i32 3
  store i64 0, i64* %237, align 8
  %238 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %242, i32 0, i32 2
  store i64 0, i64* %243, align 8
  %244 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_35__*, %struct.TYPE_35__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %252, i32 0, i32 1
  store i32 %247, i32* %253, align 4
  %254 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_35__*, %struct.TYPE_35__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %262, i32 0, i32 0
  store i32 %257, i32* %263, align 8
  %264 = load i32, i32* @FULL_RES_PREVIEW_FRAME_RATE_NUM, align 4
  %265 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %269, i32 0, i32 1
  store i32 %264, i32* %270, align 4
  %271 = load i32, i32* @FULL_RES_PREVIEW_FRAME_RATE_DEN, align 4
  %272 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_35__*, %struct.TYPE_35__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %276, i32 0, i32 0
  store i32 %271, i32* %277, align 8
  br label %349

278:                                              ; preds = %206
  %279 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @VCOS_ALIGN_UP(i32 %283, i32 32)
  %285 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_35__*, %struct.TYPE_35__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %288, i32 0, i32 3
  store i8* %284, i8** %289, align 8
  %290 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i8* @VCOS_ALIGN_UP(i32 %294, i32 16)
  %296 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_35__*, %struct.TYPE_35__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %299, i32 0, i32 2
  store i8* %295, i8** %300, align 8
  %301 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_35__*, %struct.TYPE_35__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %305, i32 0, i32 3
  store i64 0, i64* %306, align 8
  %307 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_35__*, %struct.TYPE_35__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %311, i32 0, i32 2
  store i64 0, i64* %312, align 8
  %313 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_35__*, %struct.TYPE_35__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %322, i32 0, i32 1
  store i32 %317, i32* %323, align 4
  %324 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %324, i32 0, i32 5
  %326 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_35__*, %struct.TYPE_35__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %333, i32 0, i32 0
  store i32 %328, i32* %334, align 8
  %335 = load i32, i32* @PREVIEW_FRAME_RATE_NUM, align 4
  %336 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_35__*, %struct.TYPE_35__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %340, i32 0, i32 1
  store i32 %335, i32* %341, align 4
  %342 = load i32, i32* @PREVIEW_FRAME_RATE_DEN, align 4
  %343 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_35__*, %struct.TYPE_35__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %347, i32 0, i32 0
  store i32 %342, i32* %348, align 8
  br label %349

349:                                              ; preds = %278, %211
  %350 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %351 = call i64 @mmal_port_format_commit(%struct.TYPE_39__* %350)
  store i64 %351, i64* %9, align 8
  %352 = load i64, i64* %9, align 8
  %353 = load i64, i64* @MMAL_SUCCESS, align 8
  %354 = icmp ne i64 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %349
  %356 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %615

357:                                              ; preds = %349
  %358 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %358, i32 0, i32 5
  %360 = load %struct.TYPE_43__*, %struct.TYPE_43__** %359, align 8
  %361 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %362 = call i32 @mmal_format_full_copy(%struct.TYPE_43__* %360, %struct.TYPE_43__* %361)
  %363 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %364 = call i64 @mmal_port_format_commit(%struct.TYPE_39__* %363)
  store i64 %364, i64* %9, align 8
  %365 = load i64, i64* %9, align 8
  %366 = load i64, i64* @MMAL_SUCCESS, align 8
  %367 = icmp ne i64 %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %357
  %369 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %615

370:                                              ; preds = %357
  %371 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %375 = icmp slt i64 %373, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %370
  %377 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %378 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %378, i32 0, i32 0
  store i64 %377, i64* %379, align 8
  br label %380

380:                                              ; preds = %376, %370
  %381 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %381, i32 0, i32 5
  %383 = load %struct.TYPE_43__*, %struct.TYPE_43__** %382, align 8
  store %struct.TYPE_43__* %383, %struct.TYPE_43__** %5, align 8
  %384 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 4
  %386 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp sgt i32 %387, 6000000
  br i1 %388, label %389, label %403

389:                                              ; preds = %380
  %390 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %15, i32 0, i32 0
  %391 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  store i32 %391, i32* %390, align 4
  %392 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %15, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %392, i32 0, i32 0
  store i32 50, i32* %393, align 4
  %394 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %392, i32 0, i32 1
  store i32 1000, i32* %394, align 4
  %395 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %15, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %395, i32 0, i32 0
  store i32 166, i32* %396, align 4
  %397 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %395, i32 0, i32 1
  store i32 1000, i32* %397, align 4
  %398 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %15, i32 0, i32 3
  %399 = bitcast %struct.TYPE_49__* %398 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %399, i8 0, i64 8, i1 false)
  %400 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %15, i32 0, i32 0
  %402 = call i64 @mmal_port_parameter_set(%struct.TYPE_39__* %400, i32* %401)
  br label %424

403:                                              ; preds = %380
  %404 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %404, i32 0, i32 4
  %406 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = icmp sgt i32 %407, 1000000
  br i1 %408, label %409, label %423

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 0
  %411 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  store i32 %411, i32* %410, align 4
  %412 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %412, i32 0, i32 0
  store i32 167, i32* %413, align 4
  %414 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %412, i32 0, i32 1
  store i32 1000, i32* %414, align 4
  %415 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %415, i32 0, i32 0
  store i32 999, i32* %416, align 4
  %417 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %415, i32 0, i32 1
  store i32 1000, i32* %417, align 4
  %418 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 3
  %419 = bitcast %struct.TYPE_49__* %418 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %419, i8 0, i64 8, i1 false)
  %420 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %421 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 0
  %422 = call i64 @mmal_port_parameter_set(%struct.TYPE_39__* %420, i32* %421)
  br label %423

423:                                              ; preds = %409, %403
  br label %424

424:                                              ; preds = %423, %389
  %425 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %463

429:                                              ; preds = %424
  %430 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %433, i32 0, i32 0
  store i64 %432, i64* %434, align 8
  %435 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %436 = call i32 @mmal_util_rgb_order_fixed(%struct.TYPE_39__* %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %460, label %438

438:                                              ; preds = %429
  %439 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @MMAL_ENCODING_RGB24, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %448

444:                                              ; preds = %438
  %445 = load i64, i64* @MMAL_ENCODING_BGR24, align 8
  %446 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %446, i32 0, i32 0
  store i64 %445, i64* %447, align 8
  br label %459

448:                                              ; preds = %438
  %449 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @MMAL_ENCODING_BGR24, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %458

454:                                              ; preds = %448
  %455 = load i64, i64* @MMAL_ENCODING_RGB24, align 8
  %456 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %456, i32 0, i32 0
  store i64 %455, i64* %457, align 8
  br label %458

458:                                              ; preds = %454, %448
  br label %459

459:                                              ; preds = %458, %444
  br label %460

460:                                              ; preds = %459, %429
  %461 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %461, i32 0, i32 2
  store i8* null, i8** %462, align 8
  br label %471

463:                                              ; preds = %424
  %464 = load i8*, i8** @MMAL_ENCODING_I420, align 8
  %465 = ptrtoint i8* %464 to i64
  %466 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %466, i32 0, i32 0
  store i64 %465, i64* %467, align 8
  %468 = load i8*, i8** @MMAL_ENCODING_I420, align 8
  %469 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %469, i32 0, i32 2
  store i8* %468, i8** %470, align 8
  br label %471

471:                                              ; preds = %463, %460
  %472 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 4
  %476 = call i8* @VCOS_ALIGN_UP(i32 %475, i32 32)
  %477 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %477, i32 0, i32 1
  %479 = load %struct.TYPE_35__*, %struct.TYPE_35__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %480, i32 0, i32 3
  store i8* %476, i8** %481, align 8
  %482 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 8
  %486 = call i8* @VCOS_ALIGN_UP(i32 %485, i32 16)
  %487 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %488 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_35__*, %struct.TYPE_35__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %490, i32 0, i32 2
  store i8* %486, i8** %491, align 8
  %492 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %493 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %492, i32 0, i32 1
  %494 = load %struct.TYPE_35__*, %struct.TYPE_35__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %495, i32 0, i32 1
  %497 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %496, i32 0, i32 3
  store i64 0, i64* %497, align 8
  %498 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %498, i32 0, i32 1
  %500 = load %struct.TYPE_35__*, %struct.TYPE_35__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %502, i32 0, i32 2
  store i64 0, i64* %503, align 8
  %504 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %505 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %509 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %508, i32 0, i32 1
  %510 = load %struct.TYPE_35__*, %struct.TYPE_35__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %512, i32 0, i32 1
  store i32 %507, i32* %513, align 4
  %514 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %515 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 8
  %518 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %518, i32 0, i32 1
  %520 = load %struct.TYPE_35__*, %struct.TYPE_35__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %522, i32 0, i32 0
  store i32 %517, i32* %523, align 8
  %524 = load i32, i32* @STILLS_FRAME_RATE_NUM, align 4
  %525 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %526 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %525, i32 0, i32 1
  %527 = load %struct.TYPE_35__*, %struct.TYPE_35__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %529, i32 0, i32 1
  store i32 %524, i32* %530, align 4
  %531 = load i32, i32* @STILLS_FRAME_RATE_DEN, align 4
  %532 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %533 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %532, i32 0, i32 1
  %534 = load %struct.TYPE_35__*, %struct.TYPE_35__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %536, i32 0, i32 0
  store i32 %531, i32* %537, align 8
  %538 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %539 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %538, i32 0, i32 1
  %540 = load i64, i64* %539, align 8
  %541 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %542 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %541, i32 0, i32 2
  %543 = load i64, i64* %542, align 8
  %544 = icmp slt i64 %540, %543
  br i1 %544, label %545, label %551

545:                                              ; preds = %471
  %546 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %547 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %546, i32 0, i32 2
  %548 = load i64, i64* %547, align 8
  %549 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %550 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %549, i32 0, i32 1
  store i64 %548, i64* %550, align 8
  br label %551

551:                                              ; preds = %545, %471
  %552 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %553 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %552, i32 0, i32 3
  %554 = load i64, i64* %553, align 8
  %555 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %556 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %555, i32 0, i32 0
  store i64 %554, i64* %556, align 8
  %557 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %558 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  %559 = load i32, i32* @MMAL_TRUE, align 4
  %560 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_39__* %557, i32 %558, i32 %559)
  store i64 %560, i64* %9, align 8
  %561 = load i64, i64* %9, align 8
  %562 = load i64, i64* @MMAL_SUCCESS, align 8
  %563 = icmp ne i64 %561, %562
  br i1 %563, label %564, label %566

564:                                              ; preds = %551
  %565 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %615

566:                                              ; preds = %551
  %567 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %568 = call i64 @mmal_port_format_commit(%struct.TYPE_39__* %567)
  store i64 %568, i64* %9, align 8
  %569 = load i64, i64* %9, align 8
  %570 = load i64, i64* @MMAL_SUCCESS, align 8
  %571 = icmp ne i64 %569, %570
  br i1 %571, label %572, label %574

572:                                              ; preds = %566
  %573 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %615

574:                                              ; preds = %566
  %575 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %576 = call i64 @mmal_component_enable(%struct.TYPE_44__* %575)
  store i64 %576, i64* %9, align 8
  %577 = load i64, i64* %9, align 8
  %578 = load i64, i64* @MMAL_SUCCESS, align 8
  %579 = icmp ne i64 %577, %578
  br i1 %579, label %580, label %582

580:                                              ; preds = %574
  %581 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %615

582:                                              ; preds = %574
  %583 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %584 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %585 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %584, i32 0, i32 0
  %586 = load i64, i64* %585, align 8
  %587 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %588 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %587, i32 0, i32 1
  %589 = load i64, i64* %588, align 8
  %590 = call i32* @mmal_port_pool_create(%struct.TYPE_39__* %583, i64 %586, i64 %589)
  store i32* %590, i32** %10, align 8
  %591 = load i32*, i32** %10, align 8
  %592 = icmp ne i32* %591, null
  br i1 %592, label %598, label %593

593:                                              ; preds = %582
  %594 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %595 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %594, i32 0, i32 4
  %596 = load i64, i64* %595, align 8
  %597 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i64 %596)
  br label %598

598:                                              ; preds = %593, %582
  %599 = load i32*, i32** %10, align 8
  %600 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %601 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %600, i32 0, i32 3
  store i32* %599, i32** %601, align 8
  %602 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %603 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %604 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %603, i32 0, i32 2
  store %struct.TYPE_44__* %602, %struct.TYPE_44__** %604, align 8
  %605 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %606 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %605, i32 0, i32 1
  %607 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %613

610:                                              ; preds = %598
  %611 = load i32, i32* @stderr, align 4
  %612 = call i32 @fprintf(i32 %611, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %613

613:                                              ; preds = %610, %598
  %614 = load i64, i64* %9, align 8
  store i64 %614, i64* %2, align 8
  br label %623

615:                                              ; preds = %580, %572, %564, %368, %355, %96, %66, %50, %42, %22
  %616 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %617 = icmp ne %struct.TYPE_44__* %616, null
  br i1 %617, label %618, label %621

618:                                              ; preds = %615
  %619 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %620 = call i32 @mmal_component_destroy(%struct.TYPE_44__* %619)
  br label %621

621:                                              ; preds = %618, %615
  %622 = load i64, i64* %9, align 8
  store i64 %622, i64* %2, align 8
  br label %623

623:                                              ; preds = %621, %613
  %624 = load i64, i64* %2, align 8
  ret i64 %624
}

declare dso_local i64 @mmal_component_create(i32, %struct.TYPE_44__**) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mmal_port_parameter_set(%struct.TYPE_39__*, i32*) #1

declare dso_local i64 @mmal_port_parameter_set_uint32(%struct.TYPE_39__*, i32, i32) #1

declare dso_local i64 @mmal_port_enable(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @raspicamcontrol_set_all_parameters(%struct.TYPE_44__*, %struct.TYPE_46__*) #1

declare dso_local i8* @VCOS_ALIGN_UP(i32, i32) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_39__*) #1

declare dso_local i32 @mmal_format_full_copy(%struct.TYPE_43__*, %struct.TYPE_43__*) #1

declare dso_local i32 @mmal_util_rgb_order_fixed(%struct.TYPE_39__*) #1

declare dso_local i64 @mmal_port_parameter_set_boolean(%struct.TYPE_39__*, i32, i32) #1

declare dso_local i64 @mmal_component_enable(%struct.TYPE_44__*) #1

declare dso_local i32* @mmal_port_pool_create(%struct.TYPE_39__*, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_44__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
