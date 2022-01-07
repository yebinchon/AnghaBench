; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_create_encoder_component.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiStill.c_create_encoder_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_24__*, i32*, %struct.TYPE_19__, i64, i64, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__**, %struct.TYPE_22__**, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i32, i64 }
%struct.TYPE_23__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Unable to create JPEG encoder component\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"JPEG encoder doesn't have input/output ports\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Unable to set format on video encoder output port\00", align 1
@MMAL_PARAMETER_JPEG_Q_FACTOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Unable to set JPEG quality\00", align 1
@MMAL_PARAMETER_JPEG_RESTART_INTERVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Unable to set JPEG restart interval\00", align 1
@MMAL_PARAMETER_THUMBNAIL_CONFIGURATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Unable to enable video encoder component\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"Failed to create buffer header pool for encoder output port %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Encoder component done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*)* @create_encoder_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_encoder_component(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  %10 = load i32, i32* @MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER, align 4
  %11 = call i64 @mmal_component_create(i32 %10, %struct.TYPE_24__** %4)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @MMAL_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %222

17:                                               ; preds = %1
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %17
  %28 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %28, i64* %7, align 8
  %29 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %222

30:                                               ; preds = %22
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %33, i64 0
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %5, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %38, i64 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %6, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = call i32 @mmal_format_copy(%struct.TYPE_17__* %43, %struct.TYPE_17__* %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 7
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %30
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %30
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %73
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %86, %73
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %94 = call i64 @mmal_port_format_commit(%struct.TYPE_22__* %93)
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @MMAL_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %222

100:                                              ; preds = %92
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = load i32, i32* @MMAL_PARAMETER_JPEG_Q_FACTOR, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @mmal_port_parameter_set_uint32(%struct.TYPE_22__* %101, i32 %102, i64 %105)
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @MMAL_SUCCESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %222

112:                                              ; preds = %100
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %114 = load i32, i32* @MMAL_PARAMETER_JPEG_RESTART_INTERVAL, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @mmal_port_parameter_set_uint32(%struct.TYPE_22__* %113, i32 %114, i64 %117)
  store i64 %118, i64* %7, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %112
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @MMAL_SUCCESS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %222

129:                                              ; preds = %123, %112
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %131 = load i32, i32* @MMAL_PARAMETER_THUMBNAIL_CONFIGURATION, align 4
  store i32 %131, i32* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 3
  store i32 0, i32* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 4
  store i32 0, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 5
  store i32 0, i32* %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 6
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 7
  store i32 0, i32* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 8
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 9
  %141 = bitcast %struct.TYPE_18__* %140 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %141, i8 0, i64 8, i1 false)
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %129
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %147
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 1
  store i64 %164, i64* %165, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 2
  store i64 %169, i64* %170, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 4
  store i32 %174, i32* %175, align 4
  br label %176

176:                                              ; preds = %159, %153, %147, %129
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 3
  %181 = call i64 @mmal_port_parameter_set(i32 %179, i32* %180)
  store i64 %181, i64* %7, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %183 = call i64 @mmal_component_enable(%struct.TYPE_24__* %182)
  store i64 %183, i64* %7, align 8
  %184 = load i64, i64* %7, align 8
  %185 = load i64, i64* @MMAL_SUCCESS, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %176
  %188 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %222

189:                                              ; preds = %176
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i32* @mmal_port_pool_create(%struct.TYPE_22__* %190, i64 %193, i64 %196)
  store i32* %197, i32** %8, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %189
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %200, %189
  %206 = load i32*, i32** %8, align 8
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 2
  store i32* %206, i32** %208, align 8
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 1
  store %struct.TYPE_24__* %209, %struct.TYPE_24__** %211, align 8
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %205
  %218 = load i32, i32* @stderr, align 4
  %219 = call i32 @fprintf(i32 %218, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %205
  %221 = load i64, i64* %7, align 8
  store i64 %221, i64* %2, align 8
  br label %230

222:                                              ; preds = %187, %127, %110, %98, %27, %15
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %224 = icmp ne %struct.TYPE_24__* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %227 = call i32 @mmal_component_destroy(%struct.TYPE_24__* %226)
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i64, i64* %7, align 8
  store i64 %229, i64* %2, align 8
  br label %230

230:                                              ; preds = %228, %220
  %231 = load i64, i64* %2, align 8
  ret i64 %231
}

declare dso_local i64 @mmal_component_create(i32, %struct.TYPE_24__**) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i32 @mmal_format_copy(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_22__*) #1

declare dso_local i64 @mmal_port_parameter_set_uint32(%struct.TYPE_22__*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mmal_port_parameter_set(i32, i32*) #1

declare dso_local i64 @mmal_component_enable(%struct.TYPE_24__*) #1

declare dso_local i32* @mmal_port_pool_create(%struct.TYPE_22__*, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
