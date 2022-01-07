; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_test_camera_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalcam/extr_viewfinder.c_test_camera_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_29__*, %struct.TYPE_29__**, i32 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_45__*, i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_46__, %struct.TYPE_43__, i8*, i8* }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_43__ = type { i8*, i8*, i64, i64 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_46__, i64, i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i32, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32, i32, %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_32__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32, i32 }

@MMAL_PARAMETER_CHANGE_EVENT_REQUEST = common dso_local global i32 0, align 4
@MMAL_PARAMETER_CAMERA_NUM = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_CAMERA = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"couldn't create camera\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"camera doesn't have output ports\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_PARAMETER_FOCUS_STATUS = common dso_local global i32 0, align 4
@MMAL_ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"No focus status change events\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"No camera number change events\00", align 1
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to set zero copy on camera output\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"enabled zero copy on camera\00", align 1
@MMALCAM_CHANGE_HDR = common dso_local global i64 0, align 8
@MMAL_PARAMETER_ALGORITHM_CONTROL = common dso_local global i32 0, align 4
@MMAL_PARAMETER_ALGORITHM_CONTROL_ALGORITHMS_HIGH_DYNAMIC_RANGE = common dso_local global i32 0, align 4
@control_bh_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"control port couldn't be enabled: %d\00", align 1
@MMAL_PARAM_TIMESTAMP_MODE_RESET_STC = common dso_local global i32 0, align 4
@MMAL_ENCODING_OPAQUE = common dso_local global i32 0, align 4
@MMAL_ENCODING_I420 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"camera viewfinder format couldn't be set\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"camera video format couldn't be set\00", align 1
@VIDEO_OUTPUT_BUFFERS_NUM = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"camera still format couldn't be set\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"camera component couldn't be enabled\00", align 1
@MMAL_PARAMETER_CAMERA_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_36__* (%struct.TYPE_37__*, i32*)* @test_camera_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_36__* @test_camera_create(%struct.TYPE_37__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_31__, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_30__, align 4
  %15 = alloca %struct.TYPE_33__, align 4
  %16 = alloca %struct.TYPE_34__, align 4
  %17 = alloca %struct.TYPE_32__, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 0
  %19 = load i32, i32* @MMAL_PARAMETER_CHANGE_EVENT_REQUEST, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 4
  %24 = bitcast %struct.TYPE_38__* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %9, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %11, align 8
  %25 = bitcast %struct.TYPE_30__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 20, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %27 = load i32, i32* @MMAL_PARAMETER_CAMERA_NUM, align 4
  store i32 %27, i32* %26, align 4
  %28 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CAMERA, align 4
  %29 = call i32 @mmal_component_create(i32 %28, %struct.TYPE_36__** %6)
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MMAL_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %367

37:                                               ; preds = %2
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @MMAL_EINVAL, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %367

46:                                               ; preds = %37
  %47 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %49, i64 0
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %50, align 8
  store %struct.TYPE_29__* %51, %struct.TYPE_29__** %9, align 8
  %52 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %54, i64 1
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %55, align 8
  store %struct.TYPE_29__* %56, %struct.TYPE_29__** %10, align 8
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %59, i64 2
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %60, align 8
  store %struct.TYPE_29__* %61, %struct.TYPE_29__** %11, align 8
  %62 = load i32, i32* @MMAL_PARAMETER_FOCUS_STATUS, align 4
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 1
  %68 = call i32 @mmal_port_parameter_set(%struct.TYPE_29__* %66, i32* %67)
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MMAL_SUCCESS, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %46
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MMAL_ENOSYS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74, %46
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %90 = call i32 @mmal_port_parameter_set(%struct.TYPE_29__* %88, i32* %89)
  %91 = load i32*, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MMAL_SUCCESS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %81
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MMAL_ENOSYS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %96, %81
  %104 = call i64 (...) @enable_zero_copy()
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %161

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 0
  %108 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  store i32 %108, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 2
  %111 = bitcast %struct.TYPE_40__* %110 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %111, i8 0, i64 8, i1 false)
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 1
  %114 = call i32 @mmal_port_parameter_set(%struct.TYPE_29__* %112, i32* %113)
  %115 = load i32*, i32** %5, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MMAL_SUCCESS, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %106
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MMAL_ENOSYS, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %367

127:                                              ; preds = %120, %106
  %128 = call i32 @LOG_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 1
  %131 = call i32 @mmal_port_parameter_set(%struct.TYPE_29__* %129, i32* %130)
  %132 = load i32*, i32** %5, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MMAL_SUCCESS, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %127
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MMAL_ENOSYS, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %367

144:                                              ; preds = %137, %127
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 1
  %147 = call i32 @mmal_port_parameter_set(%struct.TYPE_29__* %145, i32* %146)
  %148 = load i32*, i32** %5, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @MMAL_SUCCESS, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %144
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MMAL_ENOSYS, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %367

160:                                              ; preds = %153, %144
  br label %161

161:                                              ; preds = %160, %103
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @MMALCAM_CHANGE_HDR, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  %169 = load i32, i32* @MMAL_PARAMETER_ALGORITHM_CONTROL, align 4
  store i32 %169, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  %171 = load i32, i32* @MMAL_PARAMETER_ALGORITHM_CONTROL_ALGORITHMS_HIGH_DYNAMIC_RANGE, align 4
  store i32 %171, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 2
  store i32 1, i32* %172, align 4
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 3
  %174 = bitcast %struct.TYPE_41__* %173 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %174, i8 0, i64 8, i1 false)
  %175 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  %179 = call i32 @mmal_port_parameter_set(%struct.TYPE_29__* %177, i32* %178)
  br label %180

180:                                              ; preds = %167, %161
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %182, align 8
  %184 = load i32, i32* @control_bh_cb, align 4
  %185 = call i32 @mmal_port_enable(%struct.TYPE_29__* %183, i32 %184)
  %186 = load i32*, i32** %5, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %180
  %191 = load i32*, i32** %5, align 8
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %192)
  br label %367

194:                                              ; preds = %180
  %195 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @parse_vformat(i32 %197, i8** %12, i8** %13, i32* null)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load i32, i32* @MMAL_EINVAL, align 4
  %202 = load i32*, i32** %5, align 8
  store i32 %201, i32* %202, align 4
  br label %367

203:                                              ; preds = %194
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %203
  %210 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %211, i32 0, i32 0
  store i32 1, i32* %212, align 8
  br label %213

213:                                              ; preds = %209, %203
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 0
  %215 = load i8*, i8** %12, align 8
  store i8* %215, i8** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 1
  %217 = load i8*, i8** %13, align 8
  store i8* %217, i8** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 2
  %219 = load i8*, i8** %12, align 8
  store i8* %219, i8** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 3
  %221 = load i8*, i8** %13, align 8
  store i8* %221, i8** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 4
  store i32 3, i32* %222, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 5
  store i32 0, i32* %223, align 4
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 6
  %225 = load i32, i32* @MMAL_PARAM_TIMESTAMP_MODE_RESET_STC, align 4
  store i32 %225, i32* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 7
  store i32 0, i32* %226, align 4
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 8
  store i32 0, i32* %227, align 8
  %228 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 9
  store i32 0, i32* %228, align 4
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 10
  store i32 0, i32* %229, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 11
  %231 = bitcast %struct.TYPE_42__* %230 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %231, i8 0, i64 8, i1 false)
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 5
  %236 = call i32 @mmal_port_parameter_set(%struct.TYPE_29__* %234, i32* %235)
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %238, align 8
  store %struct.TYPE_35__* %239, %struct.TYPE_35__** %7, align 8
  %240 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %213
  %245 = load i32, i32* @MMAL_ENCODING_OPAQUE, align 4
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 8
  br label %252

248:                                              ; preds = %213
  %249 = load i32, i32* @MMAL_ENCODING_I420, align 4
  %250 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %248, %244
  %253 = load i8*, i8** %12, align 8
  %254 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_45__*, %struct.TYPE_45__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %257, i32 0, i32 3
  store i8* %253, i8** %258, align 8
  %259 = load i8*, i8** %13, align 8
  %260 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_45__*, %struct.TYPE_45__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %263, i32 0, i32 2
  store i8* %259, i8** %264, align 8
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_45__*, %struct.TYPE_45__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %269, i32 0, i32 3
  store i64 0, i64* %270, align 8
  %271 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_45__*, %struct.TYPE_45__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %275, i32 0, i32 2
  store i64 0, i64* %276, align 8
  %277 = load i8*, i8** %12, align 8
  %278 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_45__*, %struct.TYPE_45__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %282, i32 0, i32 1
  store i8* %277, i8** %283, align 8
  %284 = load i8*, i8** %13, align 8
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_45__*, %struct.TYPE_45__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %289, i32 0, i32 0
  store i8* %284, i8** %290, align 8
  %291 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_45__*, %struct.TYPE_45__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 1
  %298 = bitcast %struct.TYPE_46__* %295 to i8*
  %299 = bitcast %struct.TYPE_46__* %297 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %298, i8* align 8 %299, i64 4, i1 false)
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %301 = call i32 @mmal_port_format_commit(%struct.TYPE_29__* %300)
  %302 = load i32*, i32** %5, align 8
  store i32 %301, i32* %302, align 4
  %303 = load i32*, i32** %5, align 8
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %252
  %307 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %367

308:                                              ; preds = %252
  %309 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_35__*, %struct.TYPE_35__** %310, align 8
  %312 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %313 = call i32 @mmal_format_full_copy(%struct.TYPE_35__* %311, %struct.TYPE_35__* %312)
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %315 = call i32 @mmal_port_format_commit(%struct.TYPE_29__* %314)
  %316 = load i32*, i32** %5, align 8
  store i32 %315, i32* %316, align 4
  %317 = load i32*, i32** %5, align 8
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %308
  %321 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %367

322:                                              ; preds = %308
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %327 = icmp slt i64 %325, %326
  br i1 %327, label %328, label %332

328:                                              ; preds = %322
  %329 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 0
  store i64 %329, i64* %331, align 8
  br label %332

332:                                              ; preds = %328, %322
  %333 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_35__*, %struct.TYPE_35__** %334, align 8
  %336 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %337 = call i32 @mmal_format_full_copy(%struct.TYPE_35__* %335, %struct.TYPE_35__* %336)
  %338 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %339 = call i32 @mmal_port_format_commit(%struct.TYPE_29__* %338)
  %340 = load i32*, i32** %5, align 8
  store i32 %339, i32* %340, align 4
  %341 = load i32*, i32** %5, align 8
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %332
  %345 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %367

346:                                              ; preds = %332
  %347 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %351 = icmp slt i64 %349, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %346
  %353 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %354 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %354, i32 0, i32 0
  store i64 %353, i64* %355, align 8
  br label %356

356:                                              ; preds = %352, %346
  %357 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %358 = call i32 @mmal_component_enable(%struct.TYPE_36__* %357)
  %359 = load i32*, i32** %5, align 8
  store i32 %358, i32* %359, align 4
  %360 = load i32*, i32** %5, align 8
  %361 = load i32, i32* %360, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %356
  %364 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  br label %367

365:                                              ; preds = %356
  %366 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_36__* %366, %struct.TYPE_36__** %3, align 8
  br label %374

367:                                              ; preds = %363, %344, %320, %306, %200, %190, %158, %142, %125, %42, %35
  %368 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %369 = icmp ne %struct.TYPE_36__* %368, null
  br i1 %369, label %370, label %373

370:                                              ; preds = %367
  %371 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %372 = call i32 @mmal_component_destroy(%struct.TYPE_36__* %371)
  br label %373

373:                                              ; preds = %370, %367
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %3, align 8
  br label %374

374:                                              ; preds = %373, %365
  %375 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  ret %struct.TYPE_36__* %375
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmal_component_create(i32, %struct.TYPE_36__**) #2

declare dso_local i32 @LOG_ERROR(i8*, ...) #2

declare dso_local i32 @mmal_port_parameter_set(%struct.TYPE_29__*, i32*) #2

declare dso_local i64 @enable_zero_copy(...) #2

declare dso_local i32 @LOG_INFO(i8*) #2

declare dso_local i32 @mmal_port_enable(%struct.TYPE_29__*, i32) #2

declare dso_local i64 @parse_vformat(i32, i8**, i8**, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mmal_port_format_commit(%struct.TYPE_29__*) #2

declare dso_local i32 @mmal_format_full_copy(%struct.TYPE_35__*, %struct.TYPE_35__*) #2

declare dso_local i32 @mmal_component_enable(%struct.TYPE_36__*) #2

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_36__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
