; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_create_camera_component.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_create_camera_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_36__, %struct.TYPE_43__*, i32, i64, %struct.TYPE_45__, %struct.TYPE_48__, i64 }
%struct.TYPE_36__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_38__*, %struct.TYPE_38__**, i32 }
%struct.TYPE_38__ = type { i64, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { %struct.TYPE_35__*, i8*, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_53__, %struct.TYPE_52__, i8*, i8* }
%struct.TYPE_53__ = type { i32, i32 }
%struct.TYPE_52__ = type { i32, i32, i64, i64 }
%struct.TYPE_45__ = type { i32, i32 }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_39__ = type { i32, i32, %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_41__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_40__ = type { i32, %struct.TYPE_51__, %struct.TYPE_50__, %struct.TYPE_49__ }
%struct.TYPE_51__ = type { i32, i32 }
%struct.TYPE_50__ = type { i32, i32 }
%struct.TYPE_49__ = type { i32, i32 }

@MMAL_COMPONENT_DEFAULT_CAMERA = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to create camera component\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not set stereo mode : error %d\00", align 1
@MMAL_PARAMETER_CAMERA_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not select camera : error %d\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Camera doesn't have output ports\00", align 1
@MMAL_PARAMETER_CAMERA_CUSTOM_SENSOR_CONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Could not set sensor mode : error %d\00", align 1
@MMAL_CAMERA_PREVIEW_PORT = common dso_local global i64 0, align 8
@MMAL_CAMERA_VIDEO_PORT = common dso_local global i64 0, align 8
@MMAL_CAMERA_CAPTURE_PORT = common dso_local global i64 0, align 8
@default_camera_control_callback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Unable to enable control port : error %d\00", align 1
@MMAL_PARAM_TIMESTAMP_MODE_RESET_STC = common dso_local global i32 0, align 4
@MMAL_ENCODING_OPAQUE = common dso_local global i8* null, align 8
@MMAL_ENCODING_I420 = common dso_local global i32 0, align 4
@MMAL_PARAMETER_FPS_RANGE = common dso_local global i32 0, align 4
@FULL_RES_PREVIEW_FRAME_RATE_NUM = common dso_local global i32 0, align 4
@FULL_RES_PREVIEW_FRAME_RATE_DEN = common dso_local global i32 0, align 4
@PREVIEW_FRAME_RATE_NUM = common dso_local global i32 0, align 4
@PREVIEW_FRAME_RATE_DEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"camera viewfinder format couldn't be set\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"camera video format couldn't be set\00", align 1
@VIDEO_OUTPUT_BUFFERS_NUM = common dso_local global i64 0, align 8
@STILLS_FRAME_RATE_NUM = common dso_local global i32 0, align 4
@STILLS_FRAME_RATE_DEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"camera still format couldn't be set\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"camera component couldn't be enabled\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"Failed to configure preview port for GL rendering\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Camera component done\0A\00", align 1
@MMAL_PARAMETER_CAMERA_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_37__*)* @create_camera_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_camera_component(%struct.TYPE_37__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca %struct.TYPE_43__*, align 8
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_39__, align 4
  %11 = alloca %struct.TYPE_41__, align 4
  %12 = alloca %struct.TYPE_40__, align 4
  %13 = alloca %struct.TYPE_40__, align 4
  %14 = alloca %struct.TYPE_40__, align 4
  %15 = alloca %struct.TYPE_40__, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %3, align 8
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %4, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %6, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %7, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %8, align 8
  %16 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CAMERA, align 4
  %17 = call i64 @mmal_component_create(i32 %16, %struct.TYPE_43__** %4)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @MMAL_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %587

23:                                               ; preds = %1
  %24 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %26, i64 0
  %28 = load %struct.TYPE_38__*, %struct.TYPE_38__** %27, align 8
  %29 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %30, i32 0, i32 1
  %32 = call i64 @raspicamcontrol_set_stereo_mode(%struct.TYPE_38__* %28, i32* %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %35, i64 1
  %37 = load %struct.TYPE_38__*, %struct.TYPE_38__** %36, align 8
  %38 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %39, i32 0, i32 1
  %41 = call i64 @raspicamcontrol_set_stereo_mode(%struct.TYPE_38__* %37, i32* %40)
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %9, align 8
  %44 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %46, i64 2
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %47, align 8
  %49 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %50, i32 0, i32 1
  %52 = call i64 @raspicamcontrol_set_stereo_mode(%struct.TYPE_38__* %48, i32* %51)
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @MMAL_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %23
  %59 = load i64, i64* %9, align 8
  %60 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  br label %587

61:                                               ; preds = %23
  %62 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %10, i32 0, i32 0
  %63 = load i32, i32* @MMAL_PARAMETER_CAMERA_NUM, align 4
  store i32 %63, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %10, i32 0, i32 1
  %65 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %64, align 4
  %69 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %10, i32 0, i32 2
  %70 = bitcast %struct.TYPE_44__* %69 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %70, i8 0, i64 8, i1 false)
  %71 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_38__*, %struct.TYPE_38__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %10, i32 0, i32 0
  %75 = call i64 @mmal_port_parameter_set(%struct.TYPE_38__* %73, i32* %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @MMAL_SUCCESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %61
  %80 = load i64, i64* %9, align 8
  %81 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  br label %587

82:                                               ; preds = %61
  %83 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %88, i64* %9, align 8
  %89 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %587

90:                                               ; preds = %82
  %91 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %92, align 8
  %94 = load i32, i32* @MMAL_PARAMETER_CAMERA_CUSTOM_SENSOR_CONFIG, align 4
  %95 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @mmal_port_parameter_set_uint32(%struct.TYPE_38__* %93, i32 %94, i32 %98)
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @MMAL_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = load i64, i64* %9, align 8
  %105 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  br label %587

106:                                              ; preds = %90
  %107 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %108, align 8
  %110 = load i64, i64* @MMAL_CAMERA_PREVIEW_PORT, align 8
  %111 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %109, i64 %110
  %112 = load %struct.TYPE_38__*, %struct.TYPE_38__** %111, align 8
  store %struct.TYPE_38__* %112, %struct.TYPE_38__** %6, align 8
  %113 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %114, align 8
  %116 = load i64, i64* @MMAL_CAMERA_VIDEO_PORT, align 8
  %117 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %115, i64 %116
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %117, align 8
  store %struct.TYPE_38__* %118, %struct.TYPE_38__** %7, align 8
  %119 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %120, align 8
  %122 = load i64, i64* @MMAL_CAMERA_CAPTURE_PORT, align 8
  %123 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %121, i64 %122
  %124 = load %struct.TYPE_38__*, %struct.TYPE_38__** %123, align 8
  store %struct.TYPE_38__* %124, %struct.TYPE_38__** %8, align 8
  %125 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %126, align 8
  %128 = load i32, i32* @default_camera_control_callback, align 4
  %129 = call i64 @mmal_port_enable(%struct.TYPE_38__* %127, i32 %128)
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* @MMAL_SUCCESS, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %106
  %134 = load i64, i64* %9, align 8
  %135 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %134)
  br label %587

136:                                              ; preds = %106
  %137 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 0
  store i32 1, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 1
  store i32 3, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 2
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 3
  %141 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %140, align 4
  %146 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 4
  %147 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %146, align 4
  %152 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 5
  %153 = load i32, i32* @MMAL_PARAM_TIMESTAMP_MODE_RESET_STC, align 4
  store i32 %153, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 6
  store i32 0, i32* %154, align 4
  %155 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 7
  store i32 0, i32* %155, align 4
  %156 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 8
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 9
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %157, align 4
  %162 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 10
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %162, align 4
  %167 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 11
  %168 = bitcast %struct.TYPE_46__* %167 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %168, i8 0, i64 8, i1 false)
  %169 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %136
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 4
  store i32 %177, i32* %178, align 4
  %179 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 3
  store i32 %182, i32* %183, align 4
  br label %184

184:                                              ; preds = %173, %136
  %185 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_38__*, %struct.TYPE_38__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %11, i32 0, i32 2
  %189 = call i64 @mmal_port_parameter_set(%struct.TYPE_38__* %187, i32* %188)
  %190 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %191 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %191, i32 0, i32 4
  %193 = call i32 @raspicamcontrol_set_all_parameters(%struct.TYPE_43__* %190, %struct.TYPE_45__* %192)
  %194 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_42__*, %struct.TYPE_42__** %195, align 8
  store %struct.TYPE_42__* %196, %struct.TYPE_42__** %5, align 8
  %197 = load i8*, i8** @MMAL_ENCODING_OPAQUE, align 8
  %198 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* @MMAL_ENCODING_I420, align 4
  %201 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp sgt i32 %206, 6000000
  br i1 %207, label %208, label %222

208:                                              ; preds = %184
  %209 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %12, i32 0, i32 0
  %210 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  store i32 %210, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %12, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %211, i32 0, i32 0
  store i32 50, i32* %212, align 4
  %213 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %211, i32 0, i32 1
  store i32 1000, i32* %213, align 4
  %214 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %12, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %214, i32 0, i32 0
  store i32 166, i32* %215, align 4
  %216 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %214, i32 0, i32 1
  store i32 1000, i32* %216, align 4
  %217 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %12, i32 0, i32 3
  %218 = bitcast %struct.TYPE_49__* %217 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %218, i8 0, i64 8, i1 false)
  %219 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %12, i32 0, i32 0
  %221 = call i64 @mmal_port_parameter_set(%struct.TYPE_38__* %219, i32* %220)
  br label %243

222:                                              ; preds = %184
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp sgt i32 %226, 1000000
  br i1 %227, label %228, label %242

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %13, i32 0, i32 0
  %230 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  store i32 %230, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %13, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %231, i32 0, i32 0
  store i32 166, i32* %232, align 4
  %233 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %231, i32 0, i32 1
  store i32 1000, i32* %233, align 4
  %234 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %13, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %234, i32 0, i32 0
  store i32 999, i32* %235, align 4
  %236 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %234, i32 0, i32 1
  store i32 1000, i32* %236, align 4
  %237 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %13, i32 0, i32 3
  %238 = bitcast %struct.TYPE_49__* %237 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %238, i8 0, i64 8, i1 false)
  %239 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %13, i32 0, i32 0
  %241 = call i64 @mmal_port_parameter_set(%struct.TYPE_38__* %239, i32* %240)
  br label %242

242:                                              ; preds = %228, %222
  br label %243

243:                                              ; preds = %242, %208
  %244 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %244, i32 0, i32 6
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %315

248:                                              ; preds = %243
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i8* @VCOS_ALIGN_UP(i32 %252, i32 32)
  %254 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_35__*, %struct.TYPE_35__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %257, i32 0, i32 3
  store i8* %253, i8** %258, align 8
  %259 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i8* @VCOS_ALIGN_UP(i32 %262, i32 16)
  %264 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_35__*, %struct.TYPE_35__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %267, i32 0, i32 2
  store i8* %263, i8** %268, align 8
  %269 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_35__*, %struct.TYPE_35__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %273, i32 0, i32 3
  store i64 0, i64* %274, align 8
  %275 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_35__*, %struct.TYPE_35__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %279, i32 0, i32 2
  store i64 0, i64* %280, align 8
  %281 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_35__*, %struct.TYPE_35__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %289, i32 0, i32 1
  store i32 %284, i32* %290, align 4
  %291 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_35__*, %struct.TYPE_35__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %299, i32 0, i32 0
  store i32 %294, i32* %300, align 8
  %301 = load i32, i32* @FULL_RES_PREVIEW_FRAME_RATE_NUM, align 4
  %302 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_35__*, %struct.TYPE_35__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %306, i32 0, i32 1
  store i32 %301, i32* %307, align 4
  %308 = load i32, i32* @FULL_RES_PREVIEW_FRAME_RATE_DEN, align 4
  %309 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_35__*, %struct.TYPE_35__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %313, i32 0, i32 0
  store i32 %308, i32* %314, align 8
  br label %386

315:                                              ; preds = %243
  %316 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %316, i32 0, i32 5
  %318 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = call i8* @VCOS_ALIGN_UP(i32 %320, i32 32)
  %322 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_35__*, %struct.TYPE_35__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %325, i32 0, i32 3
  store i8* %321, i8** %326, align 8
  %327 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i8* @VCOS_ALIGN_UP(i32 %331, i32 16)
  %333 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_35__*, %struct.TYPE_35__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %336, i32 0, i32 2
  store i8* %332, i8** %337, align 8
  %338 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_35__*, %struct.TYPE_35__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %342, i32 0, i32 3
  store i64 0, i64* %343, align 8
  %344 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %348, i32 0, i32 2
  store i64 0, i64* %349, align 8
  %350 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_35__*, %struct.TYPE_35__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %359, i32 0, i32 1
  store i32 %354, i32* %360, align 4
  %361 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %361, i32 0, i32 5
  %363 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %366, i32 0, i32 0
  %368 = load %struct.TYPE_35__*, %struct.TYPE_35__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %370, i32 0, i32 0
  store i32 %365, i32* %371, align 8
  %372 = load i32, i32* @PREVIEW_FRAME_RATE_NUM, align 4
  %373 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_35__*, %struct.TYPE_35__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %377, i32 0, i32 1
  store i32 %372, i32* %378, align 4
  %379 = load i32, i32* @PREVIEW_FRAME_RATE_DEN, align 4
  %380 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_35__*, %struct.TYPE_35__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %384, i32 0, i32 0
  store i32 %379, i32* %385, align 8
  br label %386

386:                                              ; preds = %315, %248
  %387 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %388 = call i64 @mmal_port_format_commit(%struct.TYPE_38__* %387)
  store i64 %388, i64* %9, align 8
  %389 = load i64, i64* %9, align 8
  %390 = load i64, i64* @MMAL_SUCCESS, align 8
  %391 = icmp ne i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %386
  %393 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %587

394:                                              ; preds = %386
  %395 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_42__*, %struct.TYPE_42__** %396, align 8
  %398 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %399 = call i32 @mmal_format_full_copy(%struct.TYPE_42__* %397, %struct.TYPE_42__* %398)
  %400 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %401 = call i64 @mmal_port_format_commit(%struct.TYPE_38__* %400)
  store i64 %401, i64* %9, align 8
  %402 = load i64, i64* %9, align 8
  %403 = load i64, i64* @MMAL_SUCCESS, align 8
  %404 = icmp ne i64 %402, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %394
  %406 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %587

407:                                              ; preds = %394
  %408 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %412 = icmp slt i64 %410, %411
  br i1 %412, label %413, label %417

413:                                              ; preds = %407
  %414 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %415 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %415, i32 0, i32 0
  store i64 %414, i64* %416, align 8
  br label %417

417:                                              ; preds = %413, %407
  %418 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %418, i32 0, i32 1
  %420 = load %struct.TYPE_42__*, %struct.TYPE_42__** %419, align 8
  store %struct.TYPE_42__* %420, %struct.TYPE_42__** %5, align 8
  %421 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %421, i32 0, i32 4
  %423 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = icmp sgt i32 %424, 6000000
  br i1 %425, label %426, label %440

426:                                              ; preds = %417
  %427 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 0
  %428 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  store i32 %428, i32* %427, align 4
  %429 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %429, i32 0, i32 0
  store i32 50, i32* %430, align 4
  %431 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %429, i32 0, i32 1
  store i32 1000, i32* %431, align 4
  %432 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %432, i32 0, i32 0
  store i32 166, i32* %433, align 4
  %434 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %432, i32 0, i32 1
  store i32 1000, i32* %434, align 4
  %435 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 3
  %436 = bitcast %struct.TYPE_49__* %435 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %436, i8 0, i64 8, i1 false)
  %437 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 0
  %439 = call i64 @mmal_port_parameter_set(%struct.TYPE_38__* %437, i32* %438)
  br label %461

440:                                              ; preds = %417
  %441 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %441, i32 0, i32 4
  %443 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = icmp sgt i32 %444, 1000000
  br i1 %445, label %446, label %460

446:                                              ; preds = %440
  %447 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 0
  %448 = load i32, i32* @MMAL_PARAMETER_FPS_RANGE, align 4
  store i32 %448, i32* %447, align 4
  %449 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %449, i32 0, i32 0
  store i32 167, i32* %450, align 4
  %451 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %449, i32 0, i32 1
  store i32 1000, i32* %451, align 4
  %452 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %452, i32 0, i32 0
  store i32 999, i32* %453, align 4
  %454 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %452, i32 0, i32 1
  store i32 1000, i32* %454, align 4
  %455 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 3
  %456 = bitcast %struct.TYPE_49__* %455 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %456, i8 0, i64 8, i1 false)
  %457 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 0
  %459 = call i64 @mmal_port_parameter_set(%struct.TYPE_38__* %457, i32* %458)
  br label %460

460:                                              ; preds = %446, %440
  br label %461

461:                                              ; preds = %460, %426
  %462 = load i8*, i8** @MMAL_ENCODING_OPAQUE, align 8
  %463 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %463, i32 0, i32 1
  store i8* %462, i8** %464, align 8
  %465 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 4
  %469 = call i8* @VCOS_ALIGN_UP(i32 %468, i32 32)
  %470 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %470, i32 0, i32 0
  %472 = load %struct.TYPE_35__*, %struct.TYPE_35__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %473, i32 0, i32 3
  store i8* %469, i8** %474, align 8
  %475 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %476 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = call i8* @VCOS_ALIGN_UP(i32 %478, i32 16)
  %480 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %480, i32 0, i32 0
  %482 = load %struct.TYPE_35__*, %struct.TYPE_35__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %483, i32 0, i32 2
  store i8* %479, i8** %484, align 8
  %485 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %485, i32 0, i32 0
  %487 = load %struct.TYPE_35__*, %struct.TYPE_35__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %489, i32 0, i32 3
  store i64 0, i64* %490, align 8
  %491 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %491, i32 0, i32 0
  %493 = load %struct.TYPE_35__*, %struct.TYPE_35__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %495, i32 0, i32 2
  store i64 0, i64* %496, align 8
  %497 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %501, i32 0, i32 0
  %503 = load %struct.TYPE_35__*, %struct.TYPE_35__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %505, i32 0, i32 1
  store i32 %500, i32* %506, align 4
  %507 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %508 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %512 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %511, i32 0, i32 0
  %513 = load %struct.TYPE_35__*, %struct.TYPE_35__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %515, i32 0, i32 0
  store i32 %510, i32* %516, align 8
  %517 = load i32, i32* @STILLS_FRAME_RATE_NUM, align 4
  %518 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %518, i32 0, i32 0
  %520 = load %struct.TYPE_35__*, %struct.TYPE_35__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %522, i32 0, i32 1
  store i32 %517, i32* %523, align 4
  %524 = load i32, i32* @STILLS_FRAME_RATE_DEN, align 4
  %525 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %526 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %525, i32 0, i32 0
  %527 = load %struct.TYPE_35__*, %struct.TYPE_35__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %529, i32 0, i32 0
  store i32 %524, i32* %530, align 8
  %531 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %532 = call i64 @mmal_port_format_commit(%struct.TYPE_38__* %531)
  store i64 %532, i64* %9, align 8
  %533 = load i64, i64* %9, align 8
  %534 = load i64, i64* @MMAL_SUCCESS, align 8
  %535 = icmp ne i64 %533, %534
  br i1 %535, label %536, label %538

536:                                              ; preds = %461
  %537 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %587

538:                                              ; preds = %461
  %539 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %540 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %539, i32 0, i32 0
  %541 = load i64, i64* %540, align 8
  %542 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %543 = icmp slt i64 %541, %542
  br i1 %543, label %544, label %548

544:                                              ; preds = %538
  %545 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %546 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %547 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %546, i32 0, i32 0
  store i64 %545, i64* %547, align 8
  br label %548

548:                                              ; preds = %544, %538
  %549 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %550 = call i64 @mmal_component_enable(%struct.TYPE_43__* %549)
  store i64 %550, i64* %9, align 8
  %551 = load i64, i64* %9, align 8
  %552 = load i64, i64* @MMAL_SUCCESS, align 8
  %553 = icmp ne i64 %551, %552
  br i1 %553, label %554, label %556

554:                                              ; preds = %548
  %555 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %587

556:                                              ; preds = %548
  %557 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %558 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %557, i32 0, i32 3
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %573

561:                                              ; preds = %556
  %562 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %563 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %562, i32 0, i32 2
  %564 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %565 = call i64 @raspitex_configure_preview_port(i32* %563, %struct.TYPE_38__* %564)
  store i64 %565, i64* %9, align 8
  %566 = load i64, i64* %9, align 8
  %567 = load i64, i64* @MMAL_SUCCESS, align 8
  %568 = icmp ne i64 %566, %567
  br i1 %568, label %569, label %572

569:                                              ; preds = %561
  %570 = load i32, i32* @stderr, align 4
  %571 = call i32 @fprintf(i32 %570, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  br label %587

572:                                              ; preds = %561
  br label %573

573:                                              ; preds = %572, %556
  %574 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %575 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %576 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %575, i32 0, i32 1
  store %struct.TYPE_43__* %574, %struct.TYPE_43__** %576, align 8
  %577 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %578, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %585

582:                                              ; preds = %573
  %583 = load i32, i32* @stderr, align 4
  %584 = call i32 @fprintf(i32 %583, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %585

585:                                              ; preds = %582, %573
  %586 = load i64, i64* %9, align 8
  store i64 %586, i64* %2, align 8
  br label %595

587:                                              ; preds = %569, %554, %536, %405, %392, %133, %103, %87, %79, %58, %21
  %588 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %589 = icmp ne %struct.TYPE_43__* %588, null
  br i1 %589, label %590, label %593

590:                                              ; preds = %587
  %591 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %592 = call i32 @mmal_component_destroy(%struct.TYPE_43__* %591)
  br label %593

593:                                              ; preds = %590, %587
  %594 = load i64, i64* %9, align 8
  store i64 %594, i64* %2, align 8
  br label %595

595:                                              ; preds = %593, %585
  %596 = load i64, i64* %2, align 8
  ret i64 %596
}

declare dso_local i64 @mmal_component_create(i32, %struct.TYPE_43__**) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i64 @raspicamcontrol_set_stereo_mode(%struct.TYPE_38__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mmal_port_parameter_set(%struct.TYPE_38__*, i32*) #1

declare dso_local i64 @mmal_port_parameter_set_uint32(%struct.TYPE_38__*, i32, i32) #1

declare dso_local i64 @mmal_port_enable(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @raspicamcontrol_set_all_parameters(%struct.TYPE_43__*, %struct.TYPE_45__*) #1

declare dso_local i8* @VCOS_ALIGN_UP(i32, i32) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_38__*) #1

declare dso_local i32 @mmal_format_full_copy(%struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i64 @mmal_component_enable(%struct.TYPE_43__*) #1

declare dso_local i64 @raspitex_configure_preview_port(i32*, %struct.TYPE_38__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
