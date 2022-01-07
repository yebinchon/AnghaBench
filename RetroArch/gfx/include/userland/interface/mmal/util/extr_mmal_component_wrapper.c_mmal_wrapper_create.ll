; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_component_wrapper.c_mmal_wrapper_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_component_wrapper.c_mmal_wrapper_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, %struct.TYPE_17__*, %struct.TYPE_16__**, i32**, i32**, %struct.TYPE_16__**, i32**, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__**, %struct.TYPE_16__**, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }

@.str = private unnamed_addr constant [20 x i8] c"wrapper %p, name %s\00", align 1
@MMAL_EINVAL = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"mmal wrapper\00", align 1
@MMAL_ENOMEM = common dso_local global i64 0, align 8
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@mmal_wrapper_bh_release_cb = common dso_local global i32 0, align 4
@mmal_wrapper_control_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_wrapper_create(%struct.TYPE_13__** %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__** %13, i8* %14)
  %16 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %17 = icmp ne %struct.TYPE_13__** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %2
  %22 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %22, i64* %3, align 8
  br label %290

23:                                               ; preds = %18
  %24 = call i64 (...) @vcos_getmicrosecs()
  store i64 %24, i64* %10, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @mmal_component_create(i8* %25, %struct.TYPE_15__** %7)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @MMAL_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %3, align 8
  br label %290

32:                                               ; preds = %23
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 16
  %43 = add i64 %37, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = add i64 80, %46
  %48 = trunc i64 %47 to i32
  %49 = call %struct.TYPE_14__* @vcos_calloc(i32 1, i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %8, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = icmp ne %struct.TYPE_14__* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %32
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = call i32 @mmal_component_destroy(%struct.TYPE_15__* %53)
  %55 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %55, i64* %3, align 8
  br label %290

56:                                               ; preds = %32
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = call i64 @vcos_semaphore_create(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %60 = load i64, i64* @VCOS_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = call i32 @mmal_component_destroy(%struct.TYPE_15__* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = call i32 @vcos_free(%struct.TYPE_14__* %65)
  %67 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %67, i64* %3, align 8
  br label %290

68:                                               ; preds = %56
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %9, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 9
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %85, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 7
  store %struct.TYPE_16__** %86, %struct.TYPE_16__*** %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 4
  store %struct.TYPE_16__** %96, %struct.TYPE_16__*** %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 1
  %101 = bitcast %struct.TYPE_14__* %100 to i32**
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 8
  store i32** %101, i32*** %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 8
  %106 = load i32**, i32*** %105, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %106, i64 %110
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 5
  store i32** %111, i32*** %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 5
  %116 = load i32**, i32*** %115, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %116, i64 %120
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 6
  store i32** %121, i32*** %123, align 8
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %177, %68
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ult i32 %125, %128
  br i1 %129, label %130, label %180

130:                                              ; preds = %124
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %133, i64 %135
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = call i8* @mmal_port_pool_create(%struct.TYPE_16__* %137, i32 0, i32 0)
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 8
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  store i32* %139, i32** %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 8
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %130
  br label %278

155:                                              ; preds = %130
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 8
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @mmal_wrapper_bh_release_cb, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %165 = bitcast %struct.TYPE_13__* %164 to i8*
  %166 = call i32 @mmal_pool_callback_set(i32* %162, i32 %163, i8* %165)
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %168 = bitcast %struct.TYPE_13__* %167 to i8*
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 7
  %171 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %171, i64 %173
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  store i8* %168, i8** %176, align 8
  br label %177

177:                                              ; preds = %155
  %178 = load i32, i32* %11, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %124

180:                                              ; preds = %124
  store i32 0, i32* %11, align 4
  br label %181

181:                                              ; preds = %250, %180
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ult i32 %182, %185
  br i1 %186, label %187, label %253

187:                                              ; preds = %181
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %190, i64 %192
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = call i8* @mmal_port_pool_create(%struct.TYPE_16__* %194, i32 0, i32 0)
  %196 = bitcast i8* %195 to i32*
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 5
  %199 = load i32**, i32*** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  store i32* %196, i32** %202, align 8
  %203 = call i32* (...) @mmal_queue_create()
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 6
  %206 = load i32**, i32*** %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  store i32* %203, i32** %209, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 5
  %212 = load i32**, i32*** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32*, i32** %212, i64 %214
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %227

218:                                              ; preds = %187
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 6
  %221 = load i32**, i32*** %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %228, label %227

227:                                              ; preds = %218, %187
  br label %278

228:                                              ; preds = %218
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 5
  %231 = load i32**, i32*** %230, align 8
  %232 = load i32, i32* %11, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* @mmal_wrapper_bh_release_cb, align 4
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %238 = bitcast %struct.TYPE_13__* %237 to i8*
  %239 = call i32 @mmal_pool_callback_set(i32* %235, i32 %236, i8* %238)
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %241 = bitcast %struct.TYPE_13__* %240 to i8*
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 4
  %244 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %244, i64 %246
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  store i8* %241, i8** %249, align 8
  br label %250

250:                                              ; preds = %228
  %251 = load i32, i32* %11, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %11, align 4
  br label %181

253:                                              ; preds = %181
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %255 = bitcast %struct.TYPE_13__* %254 to i8*
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 3
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  store i8* %255, i8** %259, align 8
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %261, align 8
  %263 = load i32, i32* @mmal_wrapper_control_cb, align 4
  %264 = call i64 @mmal_port_enable(%struct.TYPE_17__* %262, i32 %263)
  store i64 %264, i64* %6, align 8
  %265 = load i64, i64* %6, align 8
  %266 = load i64, i64* @MMAL_SUCCESS, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %253
  br label %278

269:                                              ; preds = %253
  %270 = call i64 (...) @vcos_getmicrosecs()
  %271 = load i64, i64* %10, align 8
  %272 = sub nsw i64 %270, %271
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 2
  store i64 %272, i64* %274, align 8
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %276 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  store %struct.TYPE_13__* %275, %struct.TYPE_13__** %276, align 8
  %277 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %277, i64* %3, align 8
  br label %290

278:                                              ; preds = %268, %227, %154
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %280 = call i32 @mmal_wrapper_destroy(%struct.TYPE_13__* %279)
  %281 = load i64, i64* %6, align 8
  %282 = load i64, i64* @MMAL_SUCCESS, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %278
  %285 = load i64, i64* @MMAL_ENOMEM, align 8
  br label %288

286:                                              ; preds = %278
  %287 = load i64, i64* %6, align 8
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi i64 [ %285, %284 ], [ %287, %286 ]
  store i64 %289, i64* %3, align 8
  br label %290

290:                                              ; preds = %288, %269, %62, %52, %30, %21
  %291 = load i64, i64* %3, align 8
  ret i64 %291
}

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_13__**, i8*) #1

declare dso_local i64 @vcos_getmicrosecs(...) #1

declare dso_local i64 @mmal_component_create(i8*, %struct.TYPE_15__**) #1

declare dso_local %struct.TYPE_14__* @vcos_calloc(i32, i32, i8*) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_15__*) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i32 @vcos_free(%struct.TYPE_14__*) #1

declare dso_local i8* @mmal_port_pool_create(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @mmal_pool_callback_set(i32*, i32, i8*) #1

declare dso_local i32* @mmal_queue_create(...) #1

declare dso_local i64 @mmal_port_enable(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @mmal_wrapper_destroy(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
