; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lensfun.c_config_props.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lensfun.c_config_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, float*, i64, i8*, i64, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@VIGNETTING = common dso_local global i32 0, align 4
@LF_MODIFY_VIGNETTING = common dso_local global i32 0, align 4
@GEOMETRY_DISTORTION = common dso_local global i32 0, align 4
@LF_MODIFY_DISTORTION = common dso_local global i32 0, align 4
@LF_MODIFY_GEOMETRY = common dso_local global i32 0, align 4
@LF_MODIFY_SCALE = common dso_local global i32 0, align 4
@SUBPIXEL_DISTORTION = common dso_local global i32 0, align 4
@LF_MODIFY_TCA = common dso_local global i32 0, align 4
@LF_PF_U8 = common dso_local global i32 0, align 4
@AVERROR_BUG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LANCZOS = common dso_local global i64 0, align 8
@LANCZOS_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @config_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_props(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %114, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %111

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 11
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %111

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 11
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 12
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @lf_modifier_new(i64 %32, i32 %37, i32 %40, i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VIGNETTING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %29
  %54 = load i32, i32* @LF_MODIFY_VIGNETTING, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %29
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @GEOMETRY_DISTORTION, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load i32, i32* @LF_MODIFY_DISTORTION, align 4
  %66 = load i32, i32* @LF_MODIFY_GEOMETRY, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @LF_MODIFY_SCALE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %64, %57
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SUBPIXEL_DISTORTION, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @LF_MODIFY_TCA, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 11
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @LF_PF_U8, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @lf_modifier_initialize(i64 %86, i64 %89, i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105, i32 %106, i32 %109)
  br label %113

111:                                              ; preds = %24, %19
  %112 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %112, i32* %2, align 4
  br label %283

113:                                              ; preds = %83
  br label %114

114:                                              ; preds = %113, %1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %221, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SUBPIXEL_DISTORTION, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %180

126:                                              ; preds = %119
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  %134 = call i8* @av_malloc_array(i32 %133, i32 24)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %126
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = call i32 @AVERROR(i32 %142)
  store i32 %143, i32* %2, align 4
  br label %283

144:                                              ; preds = %126
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @GEOMETRY_DISTORTION, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %144
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @lf_modifier_apply_subpixel_geometry_distortion(i64 %154, i32 0, i32 0, i32 %157, i32 %160, i8* %163)
  br label %179

165:                                              ; preds = %144
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @lf_modifier_apply_subpixel_distortion(i64 %168, i32 0, i32 0, i32 %171, i32 %174, i8* %177)
  br label %179

179:                                              ; preds = %165, %151
  br label %220

180:                                              ; preds = %119
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @GEOMETRY_DISTORTION, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %219

187:                                              ; preds = %180
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %190, %193
  %195 = call i8* @av_malloc_array(i32 %194, i32 8)
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %187
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = call i32 @AVERROR(i32 %203)
  store i32 %204, i32* %2, align 4
  br label %283

205:                                              ; preds = %187
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @lf_modifier_apply_geometry_distortion(i64 %208, i32 0, i32 0, i32 %211, i32 %214, i8* %217)
  br label %219

219:                                              ; preds = %205, %180
  br label %220

220:                                              ; preds = %219, %179
  br label %221

221:                                              ; preds = %220, %114
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load float*, float** %223, align 8
  %225 = icmp ne float* %224, null
  br i1 %225, label %282, label %226

226:                                              ; preds = %221
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @LANCZOS, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %281

232:                                              ; preds = %226
  %233 = load i32, i32* @LANCZOS_RESOLUTION, align 4
  %234 = call i8* @av_malloc_array(i32 %233, i32 16)
  %235 = bitcast i8* %234 to float*
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  store float* %235, float** %237, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load float*, float** %239, align 8
  %241 = icmp ne float* %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %232
  %243 = load i32, i32* @ENOMEM, align 4
  %244 = call i32 @AVERROR(i32 %243)
  store i32 %244, i32* %2, align 4
  br label %283

245:                                              ; preds = %232
  store i32 0, i32* %6, align 4
  br label %246

246:                                              ; preds = %277, %245
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @LANCZOS_RESOLUTION, align 4
  %249 = mul nsw i32 4, %248
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %251, label %280

251:                                              ; preds = %246
  %252 = load i32, i32* %6, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %251
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load float*, float** %256, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %257, i64 %259
  store float 1.000000e+00, float* %260, align 4
  br label %276

261:                                              ; preds = %251
  %262 = load i32, i32* %6, align 4
  %263 = sitofp i32 %262 to float
  %264 = load i32, i32* @LANCZOS_RESOLUTION, align 4
  %265 = sitofp i32 %264 to float
  %266 = fdiv float %263, %265
  %267 = call float @sqrtf(float %266) #3
  store float %267, float* %7, align 4
  %268 = load float, float* %7, align 4
  %269 = call float @lanczos_kernel(float %268)
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  %272 = load float*, float** %271, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %272, i64 %274
  store float %269, float* %275, align 4
  br label %276

276:                                              ; preds = %261, %254
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %6, align 4
  br label %246

280:                                              ; preds = %246
  br label %281

281:                                              ; preds = %280, %226
  br label %282

282:                                              ; preds = %281, %221
  store i32 0, i32* %2, align 4
  br label %283

283:                                              ; preds = %282, %242, %202, %141, %111
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local i64 @lf_modifier_new(i64, i32, i32, i32) #1

declare dso_local i32 @lf_modifier_initialize(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @lf_modifier_apply_subpixel_geometry_distortion(i64, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @lf_modifier_apply_subpixel_distortion(i64, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @lf_modifier_apply_geometry_distortion(i64, i32, i32, i32, i32, i8*) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local float @lanczos_kernel(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
