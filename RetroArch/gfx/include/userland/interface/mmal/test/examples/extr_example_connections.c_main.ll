; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/test/examples/extr_example_connections.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/test/examples/extr_example_connections.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64 }
%struct.TYPE_18__ = type { i32*, i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, i8*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid arguments\0A\00", align 1
@context = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"example\00", align 1
@MMAL_COMPONENT_DEFAULT_CONTAINER_READER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to create reader\00", align 1
@control_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to enable control port\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to enable component\00", align 1
@MMAL_COMPONENT_DEFAULT_VIDEO_DECODER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to create decoder\00", align 1
@MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to create renderer\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"failed to set uri\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"failed to create connection between reader / decoder\00", align 1
@connection_callback = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [55 x i8] c"failed to create connection between decoder / renderer\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"failed to enable connection\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"start playback\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"error during playback\00", align 1
@MMAL_CONNECTION_FLAG_TUNNELLING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"failed to send buffer\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"stop playback\0A\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca [2 x %struct.TYPE_17__*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  %15 = bitcast [2 x %struct.TYPE_17__*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 0
  %17 = call i32 @vcos_countof(%struct.TYPE_17__** %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %295

23:                                               ; preds = %2
  %24 = call i32 (...) @bcm_host_init()
  %25 = call i32 @vcos_semaphore_create(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @context, i32 0, i32 1), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %26 = load i32, i32* @MMAL_COMPONENT_DEFAULT_CONTAINER_READER, align 4
  %27 = call i64 @mmal_component_create(i32 %26, %struct.TYPE_18__** %7)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @CHECK_STATUS(i64 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  store i8* bitcast (%struct.TYPE_15__* @context to i8*), i8** %33, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = load i32, i32* @control_callback, align 4
  %38 = call i64 @mmal_port_enable(%struct.TYPE_19__* %36, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @CHECK_STATUS(i64 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = call i64 @mmal_component_enable(%struct.TYPE_18__* %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @CHECK_STATUS(i64 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_DECODER, align 4
  %46 = call i64 @mmal_component_create(i32 %45, %struct.TYPE_18__** %8)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @CHECK_STATUS(i64 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  store i8* bitcast (%struct.TYPE_15__* @context to i8*), i8** %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = load i32, i32* @control_callback, align 4
  %57 = call i64 @mmal_port_enable(%struct.TYPE_19__* %55, i32 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @CHECK_STATUS(i64 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %61 = call i64 @mmal_component_enable(%struct.TYPE_18__* %60)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @CHECK_STATUS(i64 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, align 4
  %65 = call i64 @mmal_component_create(i32 %64, %struct.TYPE_18__** %9)
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @CHECK_STATUS(i64 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  store i8* bitcast (%struct.TYPE_15__* @context to i8*), i8** %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = load i32, i32* @control_callback, align 4
  %76 = call i64 @mmal_port_enable(%struct.TYPE_19__* %74, i32 %75)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @CHECK_STATUS(i64 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = call i64 @mmal_component_enable(%struct.TYPE_18__* %79)
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @CHECK_STATUS(i64 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @mmal_util_port_set_uri(%struct.TYPE_19__* %85, i8* %88)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @CHECK_STATUS(i64 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %92 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 0
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @mmal_connection_create(%struct.TYPE_17__** %92, i32 %97, i32 %102, i32 0)
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @CHECK_STATUS(i64 %104, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  %106 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 16
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 6
  store %struct.TYPE_15__* @context, %struct.TYPE_15__** %108, align 8
  %109 = load i8*, i8** @connection_callback, align 8
  %110 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 16
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 5
  store i8* %109, i8** %112, align 8
  %113 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 1
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @mmal_connection_create(%struct.TYPE_17__** %113, i32 %118, i32 %123, i32 0)
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @CHECK_STATUS(i64 %125, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %127 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 1
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 6
  store %struct.TYPE_15__* @context, %struct.TYPE_15__** %129, align 8
  %130 = load i8*, i8** @connection_callback, align 8
  %131 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 1
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 5
  store i8* %130, i8** %133, align 8
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %147, %23
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = sub i32 %139, 1
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 %141
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = call i64 @mmal_connection_enable(%struct.TYPE_17__* %143)
  store i64 %144, i64* %6, align 8
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @CHECK_STATUS(i64 %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %147

147:                                              ; preds = %138
  %148 = load i32, i32* %11, align 4
  %149 = add i32 %148, -1
  store i32 %149, i32* %11, align 4
  br label %135

150:                                              ; preds = %135
  %151 = load i32, i32* @stderr, align 4
  %152 = call i32 @fprintf(i32 %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %229, %150
  %154 = load i32, i32* %12, align 4
  %155 = icmp ult i32 %154, 500
  br i1 %155, label %156, label %232

156:                                              ; preds = %153
  %157 = call i32 @vcos_semaphore_wait(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @context, i32 0, i32 1))
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @context, i32 0, i32 0), align 8
  store i64 %158, i64* %6, align 8
  %159 = load i64, i64* %6, align 8
  %160 = call i32 @CHECK_STATUS(i64 %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @context, i32 0, i32 2), align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %232

164:                                              ; preds = %156
  store i32 0, i32* %11, align 4
  br label %165

165:                                              ; preds = %225, %164
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %228

169:                                              ; preds = %165
  %170 = load i32, i32* %11, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 %171
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @MMAL_CONNECTION_FLAG_TUNNELLING, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %225

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %192, %180
  %182 = load i32, i32* %11, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 %183
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32* @mmal_queue_get(i32 %189)
  store i32* %190, i32** %14, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %203

192:                                              ; preds = %181
  %193 = load i32, i32* %11, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 %194
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %14, align 8
  %200 = call i64 @mmal_port_send_buffer(i32 %198, i32* %199)
  store i64 %200, i64* %6, align 8
  %201 = load i64, i64* %6, align 8
  %202 = call i32 @CHECK_STATUS(i64 %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %181

203:                                              ; preds = %181
  br label %204

204:                                              ; preds = %213, %203
  %205 = load i32, i32* %11, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 %206
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32* @mmal_queue_get(i32 %210)
  store i32* %211, i32** %14, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %224

213:                                              ; preds = %204
  %214 = load i32, i32* %11, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 %215
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %14, align 8
  %221 = call i64 @mmal_port_send_buffer(i32 %219, i32* %220)
  store i64 %221, i64* %6, align 8
  %222 = load i64, i64* %6, align 8
  %223 = call i32 @CHECK_STATUS(i64 %222, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %204

224:                                              ; preds = %204
  br label %225

225:                                              ; preds = %224, %179
  %226 = load i32, i32* %11, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %165

228:                                              ; preds = %165
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %12, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %12, align 4
  br label %153

232:                                              ; preds = %163, %153
  %233 = load i32, i32* @stderr, align 4
  %234 = call i32 @fprintf(i32 %233, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %235

235:                                              ; preds = %245, %232
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* %13, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %239, label %248

239:                                              ; preds = %235
  %240 = load i32, i32* %11, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 %241
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  %244 = call i32 @mmal_connection_disable(%struct.TYPE_17__* %243)
  br label %245

245:                                              ; preds = %239
  %246 = load i32, i32* %11, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %11, align 4
  br label %235

248:                                              ; preds = %235
  br label %249

249:                                              ; preds = %248
  store i32 0, i32* %11, align 4
  br label %250

250:                                              ; preds = %267, %249
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %13, align 4
  %253 = icmp ult i32 %251, %252
  br i1 %253, label %254, label %270

254:                                              ; preds = %250
  %255 = load i32, i32* %11, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 %256
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %257, align 8
  %259 = icmp ne %struct.TYPE_17__* %258, null
  br i1 %259, label %260, label %266

260:                                              ; preds = %254
  %261 = load i32, i32* %11, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [2 x %struct.TYPE_17__*], [2 x %struct.TYPE_17__*]* %10, i64 0, i64 %262
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %263, align 8
  %265 = call i32 @mmal_connection_destroy(%struct.TYPE_17__* %264)
  br label %266

266:                                              ; preds = %260, %254
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %11, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %11, align 4
  br label %250

270:                                              ; preds = %250
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %272 = icmp ne %struct.TYPE_18__* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %275 = call i32 @mmal_component_destroy(%struct.TYPE_18__* %274)
  br label %276

276:                                              ; preds = %273, %270
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %278 = icmp ne %struct.TYPE_18__* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %281 = call i32 @mmal_component_destroy(%struct.TYPE_18__* %280)
  br label %282

282:                                              ; preds = %279, %276
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %284 = icmp ne %struct.TYPE_18__* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %287 = call i32 @mmal_component_destroy(%struct.TYPE_18__* %286)
  br label %288

288:                                              ; preds = %285, %282
  %289 = call i32 @vcos_semaphore_delete(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @context, i32 0, i32 1))
  %290 = load i64, i64* %6, align 8
  %291 = load i64, i64* @MMAL_SUCCESS, align 8
  %292 = icmp eq i64 %290, %291
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i32 0, i32 -1
  store i32 %294, i32* %3, align 4
  br label %295

295:                                              ; preds = %288, %20
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vcos_countof(%struct.TYPE_17__**) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @bcm_host_init(...) #2

declare dso_local i32 @vcos_semaphore_create(i32*, i8*, i32) #2

declare dso_local i64 @mmal_component_create(i32, %struct.TYPE_18__**) #2

declare dso_local i32 @CHECK_STATUS(i64, i8*) #2

declare dso_local i64 @mmal_port_enable(%struct.TYPE_19__*, i32) #2

declare dso_local i64 @mmal_component_enable(%struct.TYPE_18__*) #2

declare dso_local i64 @mmal_util_port_set_uri(%struct.TYPE_19__*, i8*) #2

declare dso_local i64 @mmal_connection_create(%struct.TYPE_17__**, i32, i32, i32) #2

declare dso_local i64 @mmal_connection_enable(%struct.TYPE_17__*) #2

declare dso_local i32 @vcos_semaphore_wait(i32*) #2

declare dso_local i32* @mmal_queue_get(i32) #2

declare dso_local i64 @mmal_port_send_buffer(i32, i32*) #2

declare dso_local i32 @mmal_connection_disable(%struct.TYPE_17__*) #2

declare dso_local i32 @mmal_connection_destroy(%struct.TYPE_17__*) #2

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_18__*) #2

declare dso_local i32 @vcos_semaphore_delete(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
