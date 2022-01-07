; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_vaapi.c_vaapi_frames_get_constraints.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_vaapi.c_vaapi_frames_get_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_25__* }
%struct.TYPE_18__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@AV_VAAPI_DRIVER_QUIRK_SURFACE_ATTRIBUTES = common dso_local global i32 0, align 4
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to query surface attributes: %d (%s).\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_PIX_FMT_VAAPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, %struct.TYPE_26__*)* @vaapi_frames_get_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vaapi_frames_get_constraints(%struct.TYPE_17__* %0, i8* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %8, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %10, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %30 = icmp ne %struct.TYPE_24__* %29, null
  br i1 %30, label %31, label %244

31:                                               ; preds = %3
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AV_VAAPI_DRIVER_QUIRK_SURFACE_ATTRIBUTES, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %244, label %38

38:                                               ; preds = %31
  store i32 0, i32* %17, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @vaQuerySurfaceAttributes(i32 %41, i32 %44, %struct.TYPE_22__* null, i32* %17)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @vaErrorStr(i64 %53)
  %55 = call i32 @av_log(%struct.TYPE_17__* %50, i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %54)
  %56 = load i32, i32* @ENOSYS, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %14, align 4
  br label %316

58:                                               ; preds = %38
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = call %struct.TYPE_22__* @av_malloc(i32 %62)
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %10, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %65 = icmp ne %struct.TYPE_22__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %14, align 4
  br label %316

69:                                               ; preds = %58
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %77 = call i64 @vaQuerySurfaceAttributes(i32 %72, i32 %75, %struct.TYPE_22__* %76, i32* %17)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %69
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @vaErrorStr(i64 %85)
  %87 = call i32 @av_log(%struct.TYPE_17__* %82, i32 %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %84, i32 %86)
  %88 = load i32, i32* @ENOSYS, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %14, align 4
  br label %316

90:                                               ; preds = %69
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %166, %90
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %169

95:                                               ; preds = %91
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %165 [
    i32 128, label %102
    i32 129, label %121
    i32 130, label %132
    i32 131, label %143
    i32 132, label %154
  ]

102:                                              ; preds = %95
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @vaapi_pix_fmt_from_fourcc(i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %102
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %120

119:                                              ; preds = %102
  br label %120

120:                                              ; preds = %119, %116
  br label %165

121:                                              ; preds = %95
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %165

132:                                              ; preds = %95
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %165

143:                                              ; preds = %95
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  br label %165

154:                                              ; preds = %95
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %95, %154, %143, %132, %121, %120
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %91

169:                                              ; preds = %91
  %170 = load i32, i32* %18, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 4
  store i32* null, i32** %174, align 8
  br label %243

175:                                              ; preds = %169
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, 1
  %178 = call i8* @av_malloc_array(i32 %177, i32 4)
  %179 = bitcast i8* %178 to i32*
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 4
  store i32* %179, i32** %181, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %175
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = call i32 @AVERROR(i32 %187)
  store i32 %188, i32* %14, align 4
  br label %316

189:                                              ; preds = %175
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %190

190:                                              ; preds = %227, %189
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %17, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %230

194:                                              ; preds = %190
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 128
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %227

203:                                              ; preds = %194
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @vaapi_pix_fmt_from_fourcc(i32 %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %203
  %218 = load i32, i32* %12, align 4
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 4
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %16, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %16, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  store i32 %218, i32* %225, align 4
  br label %226

226:                                              ; preds = %217, %203
  br label %227

227:                                              ; preds = %226, %202
  %228 = load i32, i32* %15, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %15, align 4
  br label %190

230:                                              ; preds = %190
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp eq i32 %231, %232
  %234 = zext i1 %233 to i32
  %235 = call i32 @av_assert0(i32 %234)
  %236 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %16, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %236, i32* %242, align 4
  br label %243

243:                                              ; preds = %230, %172
  br label %293

244:                                              ; preds = %31, %3
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, 1
  %249 = call i8* @av_malloc_array(i32 %248, i32 4)
  %250 = bitcast i8* %249 to i32*
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 4
  store i32* %250, i32** %252, align 8
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 4
  %255 = load i32*, i32** %254, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %244
  %258 = load i32, i32* @ENOMEM, align 4
  %259 = call i32 @AVERROR(i32 %258)
  store i32 %259, i32* %14, align 4
  br label %316

260:                                              ; preds = %244
  store i32 0, i32* %15, align 4
  br label %261

261:                                              ; preds = %282, %260
  %262 = load i32, i32* %15, align 4
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %267, label %285

267:                                              ; preds = %261
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %269, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 4
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %15, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  store i32 %275, i32* %281, align 4
  br label %282

282:                                              ; preds = %267
  %283 = load i32, i32* %15, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %15, align 4
  br label %261

285:                                              ; preds = %261
  %286 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 4
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %15, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %286, i32* %292, align 4
  br label %293

293:                                              ; preds = %285, %243
  %294 = call i8* @av_malloc_array(i32 2, i32 4)
  %295 = bitcast i8* %294 to i32*
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 5
  store i32* %295, i32** %297, align 8
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 5
  %300 = load i32*, i32** %299, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %305, label %302

302:                                              ; preds = %293
  %303 = load i32, i32* @ENOMEM, align 4
  %304 = call i32 @AVERROR(i32 %303)
  store i32 %304, i32* %14, align 4
  br label %316

305:                                              ; preds = %293
  %306 = load i32, i32* @AV_PIX_FMT_VAAPI, align 4
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 5
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  store i32 %306, i32* %310, align 4
  %311 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 5
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  store i32 %311, i32* %315, align 4
  store i32 0, i32* %14, align 4
  br label %316

316:                                              ; preds = %305, %302, %257, %186, %81, %66, %49
  %317 = call i32 @av_freep(%struct.TYPE_22__** %10)
  %318 = load i32, i32* %14, align 4
  ret i32 %318
}

declare dso_local i64 @vaQuerySurfaceAttributes(i32, i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i64, i32) #1

declare dso_local i32 @vaErrorStr(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_22__* @av_malloc(i32) #1

declare dso_local i32 @vaapi_pix_fmt_from_fourcc(i32) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_22__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
