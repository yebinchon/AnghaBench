; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_svp.c_svp_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_svp.c_svp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_31__*, i32, i64, i32*, %struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32, i32, i32, i32, i32, %struct.TYPE_29__, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_27__, i32, %struct.TYPE_26__, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i64, i64 }
%struct.TYPE_32__ = type { i32*, %struct.TYPE_31__**, i32 }
%struct.TYPE_29__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Creating player for %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"camera preview\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"svp\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_ENOMEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to allocate context\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"svp-sem\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to create semaphore\00", align 1
@SVP_CREATED_SEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"svp-mutex\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed to create mutex\00", align 1
@SVP_CREATED_MUTEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"svp-timer\00", align 1
@svp_timer_cb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Failed to create timer\00", align 1
@SVP_CREATED_TIMER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"svp-wd-timer\00", align 1
@svp_watchdog_cb = common dso_local global i32 0, align 4
@SVP_CREATED_WD_TIMER = common dso_local global i32 0, align 4
@MMAL_COMPONENT_DEFAULT_CONTAINER_READER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to create container reader\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Failed to enable container reader\00", align 1
@svp_bh_control_cb = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"Failed to enable container reader control port\00", align 1
@MMAL_COMPONENT_DEFAULT_VIDEO_DECODER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"Failed to create video decoder\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Failed to enable video decoder\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Failed to enable video decoder control port\00", align 1
@MMAL_COMPONENT_DEFAULT_CAMERA = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"Failed to create camera\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Failed to enable camera\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Failed to enable camera control port\00", align 1
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i32 0, align 4
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [27 x i8] c"Failed to enable zero copy\00", align 1
@MMAL_CONNECTION_FLAG_TUNNELLING = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"Failed to create connection\00", align 1
@MMAL_ENCODING_OPAQUE = common dso_local global i32 0, align 4
@MMAL_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [31 x i8] c"Output port isn't video format\00", align 1
@SVP_CAMERA_WIDTH = common dso_local global i32 0, align 4
@SVP_CAMERA_HEIGHT = common dso_local global i32 0, align 4
@SVP_CAMERA_FRAMERATE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"Failed to set output port format\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Error allocating pool\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Error allocating queue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_28__* @svp_create(i8* %0, %struct.TYPE_29__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %11, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %12, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %19 ]
  %22 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vcos_assert(i32 %25)
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vcos_assert(i32 %29)
  %31 = call %struct.TYPE_28__* @vcos_calloc(i32 1, i32 88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_28__* %31, %struct.TYPE_28__** %8, align 8
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %33 = icmp ne %struct.TYPE_28__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i64, i64* @MMAL_SUCCESS, align 8
  br label %38

36:                                               ; preds = %20
  %37 = load i64, i64* @MMAL_ENOMEM, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  %40 = call i32 @CHECK_STATUS(i64 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 13
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 12
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %48 = bitcast %struct.TYPE_29__* %46 to i8*
  %49 = bitcast %struct.TYPE_29__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 8, i1 false)
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 11
  %52 = call i64 @vcos_semaphore_create(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @VCOS_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i64, i64* @MMAL_SUCCESS, align 8
  br label %60

58:                                               ; preds = %38
  %59 = load i64, i64* @MMAL_ENOMEM, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  %62 = call i32 @CHECK_STATUS(i64 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* @SVP_CREATED_SEM, align 4
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 10
  %70 = call i64 @vcos_mutex_create(i32* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @VCOS_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i64, i64* @MMAL_SUCCESS, align 8
  br label %78

76:                                               ; preds = %60
  %77 = load i64, i64* @MMAL_ENOMEM, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i64 [ %75, %74 ], [ %77, %76 ]
  %80 = call i32 @CHECK_STATUS(i64 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %81 = load i32, i32* @SVP_CREATED_MUTEX, align 4
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 9
  %88 = load i32, i32* @svp_timer_cb, align 4
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %90 = call i64 @vcos_timer_create(i32* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %88, %struct.TYPE_28__* %89)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @VCOS_SUCCESS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i64, i64* @MMAL_SUCCESS, align 8
  br label %98

96:                                               ; preds = %78
  %97 = load i64, i64* @MMAL_ENOMEM, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i64 [ %95, %94 ], [ %97, %96 ]
  %100 = call i32 @CHECK_STATUS(i64 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %101 = load i32, i32* @SVP_CREATED_TIMER, align 4
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 8
  %108 = load i32, i32* @svp_watchdog_cb, align 4
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %110 = call i64 @vcos_timer_create(i32* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %108, %struct.TYPE_28__* %109)
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* @VCOS_SUCCESS, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %98
  %115 = load i64, i64* @MMAL_SUCCESS, align 8
  br label %118

116:                                              ; preds = %98
  %117 = load i64, i64* @MMAL_ENOMEM, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i64 [ %115, %114 ], [ %117, %116 ]
  %120 = call i32 @CHECK_STATUS(i64 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %121 = load i32, i32* @SVP_CREATED_WD_TIMER, align 4
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 6
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %127, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 5
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %129, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 4
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %131, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 3
  store i32* null, i32** %133, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %195

136:                                              ; preds = %118
  %137 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CONTAINER_READER, align 4
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 6
  %140 = call i64 @mmal_component_create(i32 %137, %struct.TYPE_32__** %139)
  store i64 %140, i64* %9, align 8
  %141 = load i64, i64* %9, align 8
  %142 = call i32 @CHECK_STATUS(i64 %141, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 6
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %144, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = call i64 @svp_setup_reader(%struct.TYPE_32__* %145, i8* %146, %struct.TYPE_31__** %11)
  store i64 %147, i64* %9, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* @MMAL_SUCCESS, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %136
  br label %367

152:                                              ; preds = %136
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %154, align 8
  %156 = call i64 @mmal_component_enable(%struct.TYPE_32__* %155)
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @CHECK_STATUS(i64 %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 6
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @svp_bh_control_cb, align 4
  %166 = call i64 @svp_port_enable(%struct.TYPE_28__* %159, i32 %164, i32 %165)
  store i64 %166, i64* %9, align 8
  %167 = load i64, i64* %9, align 8
  %168 = call i32 @CHECK_STATUS(i64 %167, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %169 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_DECODER, align 4
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 5
  %172 = call i64 @mmal_component_create(i32 %169, %struct.TYPE_32__** %171)
  store i64 %172, i64* %9, align 8
  %173 = load i64, i64* %9, align 8
  %174 = call i32 @CHECK_STATUS(i64 %173, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %176, align 8
  store %struct.TYPE_32__* %177, %struct.TYPE_32__** %12, align 8
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %180, i64 0
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %181, align 8
  store %struct.TYPE_31__* %182, %struct.TYPE_31__** %13, align 8
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %184 = call i64 @mmal_component_enable(%struct.TYPE_32__* %183)
  store i64 %184, i64* %9, align 8
  %185 = load i64, i64* %9, align 8
  %186 = call i32 @CHECK_STATUS(i64 %185, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @svp_bh_control_cb, align 4
  %192 = call i64 @svp_port_enable(%struct.TYPE_28__* %187, i32 %190, i32 %191)
  store i64 %192, i64* %9, align 8
  %193 = load i64, i64* %9, align 8
  %194 = call i32 @CHECK_STATUS(i64 %193, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  br label %225

195:                                              ; preds = %118
  %196 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CAMERA, align 4
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 4
  %199 = call i64 @mmal_component_create(i32 %196, %struct.TYPE_32__** %198)
  store i64 %199, i64* %9, align 8
  %200 = load i64, i64* %9, align 8
  %201 = call i32 @CHECK_STATUS(i64 %200, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %203, align 8
  %205 = call i64 @mmal_component_enable(%struct.TYPE_32__* %204)
  store i64 %205, i64* %9, align 8
  %206 = load i64, i64* %9, align 8
  %207 = call i32 @CHECK_STATUS(i64 %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @svp_bh_control_cb, align 4
  %215 = call i64 @svp_port_enable(%struct.TYPE_28__* %208, i32 %213, i32 %214)
  store i64 %215, i64* %9, align 8
  %216 = load i64, i64* %9, align 8
  %217 = call i32 @CHECK_STATUS(i64 %216, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %222, i64 0
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** %223, align 8
  store %struct.TYPE_31__* %224, %struct.TYPE_31__** %13, align 8
  br label %225

225:                                              ; preds = %195, %152
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %227 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  %228 = load i32, i32* @MMAL_TRUE, align 4
  %229 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_31__* %226, i32 %227, i32 %228)
  store i64 %229, i64* %9, align 8
  %230 = load i64, i64* %9, align 8
  %231 = load i64, i64* @MMAL_ENOSYS, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %225
  %234 = load i64, i64* @MMAL_SUCCESS, align 8
  br label %237

235:                                              ; preds = %225
  %236 = load i64, i64* %9, align 8
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i64 [ %234, %233 ], [ %236, %235 ]
  %239 = call i32 @CHECK_STATUS(i64 %238, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %240 = load i8*, i8** %5, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %255

242:                                              ; preds = %237
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @MMAL_CONNECTION_FLAG_TUNNELLING, align 4
  %252 = call i64 @mmal_connection_create(i32** %244, %struct.TYPE_31__* %245, i32 %250, i32 %251)
  store i64 %252, i64* %9, align 8
  %253 = load i64, i64* %9, align 8
  %254 = call i32 @CHECK_STATUS(i64 %253, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %255

255:                                              ; preds = %242, %237
  %256 = load i32, i32* @MMAL_ENCODING_OPAQUE, align 4
  %257 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 2
  store i32 %256, i32* %260, align 8
  %261 = load i8*, i8** %5, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %315, label %263

263:                                              ; preds = %255
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %264, i32 0, i32 4
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 0
  store %struct.TYPE_30__* %269, %struct.TYPE_30__** %14, align 8
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @MMAL_ES_TYPE_VIDEO, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %263
  %278 = load i64, i64* @MMAL_SUCCESS, align 8
  br label %281

279:                                              ; preds = %263
  %280 = load i64, i64* @MMAL_EINVAL, align 8
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i64 [ %278, %277 ], [ %280, %279 ]
  %283 = call i32 @CHECK_STATUS(i64 %282, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %284 = load i32, i32* @SVP_CAMERA_WIDTH, align 4
  %285 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %285, i32 0, i32 3
  store i32 %284, i32* %286, align 8
  %287 = load i32, i32* @SVP_CAMERA_HEIGHT, align 4
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 8
  %290 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 3
  store i64 0, i64* %292, align 8
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 2
  store i64 0, i64* %295, align 8
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %300, i32 0, i32 1
  store i32 %298, i32* %301, align 4
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 0
  store i32 %304, i32* %307, align 8
  %308 = load i32, i32* @SVP_CAMERA_FRAMERATE, align 4
  %309 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %310, i32 0, i32 1
  store i32 %308, i32* %311, align 4
  %312 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 0
  store i32 1, i32* %314, align 8
  br label %315

315:                                              ; preds = %281, %255
  %316 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %317 = call i64 @mmal_port_format_commit(%struct.TYPE_31__* %316)
  store i64 %317, i64* %9, align 8
  %318 = load i64, i64* %9, align 8
  %319 = call i32 @CHECK_STATUS(i64 %318, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0))
  %320 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 4
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 0
  store i32 %327, i32* %329, align 8
  %330 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %331 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %335 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i64 @mmal_port_pool_create(%struct.TYPE_31__* %330, i32 %333, i32 %336)
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 2
  store i64 %337, i64* %339, align 8
  %340 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %315
  %345 = load i64, i64* @MMAL_SUCCESS, align 8
  br label %348

346:                                              ; preds = %315
  %347 = load i64, i64* @MMAL_ENOMEM, align 8
  br label %348

348:                                              ; preds = %346, %344
  %349 = phi i64 [ %345, %344 ], [ %347, %346 ]
  %350 = call i32 @CHECK_STATUS(i64 %349, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0))
  %351 = call i32 (...) @mmal_queue_create()
  %352 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %352, i32 0, i32 1
  store i32 %351, i32* %353, align 8
  %354 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %355 = icmp ne %struct.TYPE_28__* %354, null
  br i1 %355, label %356, label %358

356:                                              ; preds = %348
  %357 = load i64, i64* @MMAL_SUCCESS, align 8
  br label %360

358:                                              ; preds = %348
  %359 = load i64, i64* @MMAL_ENOMEM, align 8
  br label %360

360:                                              ; preds = %358, %356
  %361 = phi i64 [ %357, %356 ], [ %359, %358 ]
  %362 = call i32 @CHECK_STATUS(i64 %361, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0))
  %363 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %364 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %364, i32 0, i32 0
  store %struct.TYPE_31__* %363, %struct.TYPE_31__** %365, align 8
  %366 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_28__* %366, %struct.TYPE_28__** %4, align 8
  br label %370

367:                                              ; preds = %151
  %368 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %369 = call i32 @svp_destroy(%struct.TYPE_28__* %368)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %370

370:                                              ; preds = %367, %360
  %371 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  ret %struct.TYPE_28__* %371
}

declare dso_local i32 @LOG_TRACE(i8*, i8*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local %struct.TYPE_28__* @vcos_calloc(i32, i32, i8*) #1

declare dso_local i32 @CHECK_STATUS(i64, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i64 @vcos_timer_create(i32*, i8*, i32, %struct.TYPE_28__*) #1

declare dso_local i64 @mmal_component_create(i32, %struct.TYPE_32__**) #1

declare dso_local i64 @svp_setup_reader(%struct.TYPE_32__*, i8*, %struct.TYPE_31__**) #1

declare dso_local i64 @mmal_component_enable(%struct.TYPE_32__*) #1

declare dso_local i64 @svp_port_enable(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i64 @mmal_port_parameter_set_boolean(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @mmal_connection_create(i32**, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_31__*) #1

declare dso_local i64 @mmal_port_pool_create(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @mmal_queue_create(...) #1

declare dso_local i32 @svp_destroy(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
