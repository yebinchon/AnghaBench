; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_create_splitter_component.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_create_splitter_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, %struct.TYPE_21__*, i32*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_19__**, i32 }
%struct.TYPE_19__ = type { i64, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_22__** }
%struct.TYPE_22__ = type { %struct.TYPE_20__* }

@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Camera component must be created before splitter\00", align 1
@MMAL_COMPONENT_DEFAULT_VIDEO_SPLITTER = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to create splitter component\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Splitter doesn't have any input port\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Splitter doesn't have enough output ports\00", align 1
@MMAL_CAMERA_PREVIEW_PORT = common dso_local global i64 0, align 8
@VIDEO_OUTPUT_BUFFERS_NUM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"Unable to set format on splitter input port\00", align 1
@SPLITTER_OUTPUT_PORT = common dso_local global i32 0, align 4
@MMAL_ENCODING_I420 = common dso_local global i8* null, align 8
@MMAL_CAMERA_CAPTURE_PORT = common dso_local global i64 0, align 8
@MMAL_ENCODING_RGB24 = common dso_local global i8* null, align 8
@MMAL_ENCODING_BGR24 = common dso_local global i8* null, align 8
@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"unknown raw output format\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Unable to set format on splitter output port %d\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"splitter component couldn't be enabled\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Failed to create buffer header pool for splitter output port %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Splitter component done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*)* @create_splitter_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_splitter_component(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %15, i64* %7, align 8
  %16 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %230

17:                                               ; preds = %1
  %18 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_SPLITTER, align 4
  %19 = call i64 @mmal_component_create(i32 %18, %struct.TYPE_21__** %4)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @MMAL_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %230

25:                                               ; preds = %17
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %31, i64* %7, align 8
  %32 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %230

33:                                               ; preds = %25
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %39, i64* %7, align 8
  %40 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %230

41:                                               ; preds = %33
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %44, i64 0
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %52, align 8
  %54 = load i64, i64* @MMAL_CAMERA_PREVIEW_PORT, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %53, i64 %54
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = call i32 @mmal_format_copy(%struct.TYPE_20__* %48, %struct.TYPE_20__* %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %62, i64 0
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %41
  %70 = load i64, i64* @VIDEO_OUTPUT_BUFFERS_NUM, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %73, i64 0
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  store i64 %70, i64* %76, align 8
  br label %77

77:                                               ; preds = %69, %41
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %80, i64 0
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = call i64 @mmal_port_format_commit(%struct.TYPE_19__* %82)
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @MMAL_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %230

89:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %179, %89
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %182

96:                                               ; preds = %90
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %99, i64 %101
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %108, i64 0
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = call i32 @mmal_format_copy(%struct.TYPE_20__* %105, %struct.TYPE_20__* %112)
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @SPLITTER_OUTPUT_PORT, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %163

117:                                              ; preds = %96
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %120, i64 %122
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  store %struct.TYPE_20__* %126, %struct.TYPE_20__** %6, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %159 [
    i32 128, label %130
    i32 130, label %130
    i32 129, label %137
  ]

130:                                              ; preds = %117, %117
  %131 = load i8*, i8** @MMAL_ENCODING_I420, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** @MMAL_ENCODING_I420, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %162

137:                                              ; preds = %117
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %141, align 8
  %143 = load i64, i64* @MMAL_CAMERA_CAPTURE_PORT, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %142, i64 %143
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = call i32 @mmal_util_rgb_order_fixed(%struct.TYPE_22__* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load i8*, i8** @MMAL_ENCODING_RGB24, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  br label %156

152:                                              ; preds = %137
  %153 = load i8*, i8** @MMAL_ENCODING_BGR24, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %152, %148
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  store i8* null, i8** %158, align 8
  br label %162

159:                                              ; preds = %117
  %160 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %160, i64* %7, align 8
  %161 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %230

162:                                              ; preds = %156, %130
  br label %163

163:                                              ; preds = %162, %96
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %166, i64 %168
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = call i64 @mmal_port_format_commit(%struct.TYPE_19__* %170)
  store i64 %171, i64* %7, align 8
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* @MMAL_SUCCESS, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load i32, i32* %9, align 4
  %177 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %176)
  br label %230

178:                                              ; preds = %163
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %90

182:                                              ; preds = %90
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %184 = call i64 @mmal_component_enable(%struct.TYPE_21__* %183)
  store i64 %184, i64* %7, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @MMAL_SUCCESS, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %230

190:                                              ; preds = %182
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %192, align 8
  %194 = load i32, i32* @SPLITTER_OUTPUT_PORT, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %193, i64 %195
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %196, align 8
  store %struct.TYPE_19__* %197, %struct.TYPE_19__** %5, align 8
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32* @mmal_port_pool_create(%struct.TYPE_19__* %198, i64 %201, i32 %204)
  store i32* %205, i32** %8, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %190
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %208, %190
  %214 = load i32*, i32** %8, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 3
  store i32* %214, i32** %216, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 2
  store %struct.TYPE_21__* %217, %struct.TYPE_21__** %219, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %213
  %226 = load i32, i32* @stderr, align 4
  %227 = call i32 @fprintf(i32 %226, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %228

228:                                              ; preds = %225, %213
  %229 = load i64, i64* %7, align 8
  store i64 %229, i64* %2, align 8
  br label %238

230:                                              ; preds = %188, %175, %159, %87, %38, %30, %23, %14
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %232 = icmp ne %struct.TYPE_21__* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %235 = call i32 @mmal_component_destroy(%struct.TYPE_21__* %234)
  br label %236

236:                                              ; preds = %233, %230
  %237 = load i64, i64* %7, align 8
  store i64 %237, i64* %2, align 8
  br label %238

238:                                              ; preds = %236, %228
  %239 = load i64, i64* %2, align 8
  ret i64 %239
}

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i64 @mmal_component_create(i32, %struct.TYPE_21__**) #1

declare dso_local i32 @mmal_format_copy(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_19__*) #1

declare dso_local i32 @mmal_util_rgb_order_fixed(%struct.TYPE_22__*) #1

declare dso_local i64 @mmal_component_enable(%struct.TYPE_21__*) #1

declare dso_local i32* @mmal_port_pool_create(%struct.TYPE_19__*, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
