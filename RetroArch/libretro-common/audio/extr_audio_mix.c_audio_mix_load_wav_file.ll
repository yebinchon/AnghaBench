; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mix.c_audio_mix_load_wav_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mix.c_audio_mix_load_wav_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8**, i32, double, float*, float*, i8**, i32, i64, %struct.TYPE_9__*, %struct.TYPE_7__*, i32, i8* }
%struct.TYPE_9__ = type { i32 (i64, %struct.resampler_data*)* }
%struct.resampler_data = type { float*, float*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, double, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"Could not open WAV file for reading.\0A\00", align 1
@RWAV_ITERATE_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"error: could not load WAV file\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"error: we don't support a sample size of %d\0A\00", align 1
@RESAMPLER_QUALITY_DONTCARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @audio_mix_load_wav_file(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.resampler_data, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %15 = call i64 @calloc(i32 1, i32 104)
  %16 = inttoptr i64 %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %396

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @filestream_read_file(i8* %21, i8** %8, i32* %7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %393

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 12
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 8
  %36 = call i64 @malloc(i32 40)
  %37 = inttoptr i64 %36 to %struct.TYPE_7__*
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 10
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 10
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 12
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @rwav_load(%struct.TYPE_7__* %42, i8* %45, i32 %48)
  %50 = load i64, i64* @RWAV_ITERATE_ERROR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %26
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %393

54:                                               ; preds = %26
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 10
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @memalign_alloc(i32 128, i32 %63)
  %65 = inttoptr i64 %64 to i8**
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i8** %65, i8*** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 10
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 8
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %166

76:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %162, %76
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 10
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %78, %83
  br i1 %84, label %85, label %165

85:                                               ; preds = %77
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 10
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 10
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = mul i32 %92, %97
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %91, i64 %99
  store i32* %100, i32** %11, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 128
  %105 = shl i32 %104, 8
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = mul i32 %111, 2
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  store i8* %107, i8** %114, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 10
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %137

121:                                              ; preds = %85
  %122 = load i32*, i32** %11, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 128
  %126 = shl i32 %125, 8
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = mul i32 %132, 2
  %134 = add i32 %133, 1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %131, i64 %135
  store i8* %128, i8** %136, align 8
  br label %161

137:                                              ; preds = %85
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 10
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %144, label %160

144:                                              ; preds = %137
  %145 = load i32*, i32** %11, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 128
  %149 = shl i32 %148, 8
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = mul i32 %155, 2
  %157 = add i32 %156, 1
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %154, i64 %158
  store i8* %151, i8** %159, align 8
  br label %160

160:                                              ; preds = %144, %137
  br label %161

161:                                              ; preds = %160, %121
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %10, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %77

165:                                              ; preds = %77
  br label %249

166:                                              ; preds = %54
  %167 = load i32, i32* %6, align 4
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %241

169:                                              ; preds = %166
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 10
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %217

176:                                              ; preds = %169
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %213, %176
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 10
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ult i32 %178, %183
  br i1 %184, label %185, label %216

185:                                              ; preds = %177
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 10
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = inttoptr i64 %190 to i8**
  %192 = load i32, i32* %12, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %13, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i8**, i8*** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = mul i32 %200, 2
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %199, i64 %202
  store i8* %196, i8** %203, align 8
  %204 = load i8*, i8** %13, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i8**, i8*** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = mul i32 %208, 2
  %210 = add i32 %209, 1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %207, i64 %211
  store i8* %204, i8** %212, align 8
  br label %213

213:                                              ; preds = %185
  %214 = load i32, i32* %12, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %12, align 4
  br label %177

216:                                              ; preds = %177
  br label %240

217:                                              ; preds = %169
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 10
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %224, label %239

224:                                              ; preds = %217
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i8**, i8*** %226, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 10
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 10
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @memcpy(i8** %227, i64 %232, i32 %237)
  br label %239

239:                                              ; preds = %224, %217
  br label %240

240:                                              ; preds = %239, %216
  br label %248

241:                                              ; preds = %166
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 2
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* %6, align 4
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %245)
  br label %393

247:                                              ; preds = %241
  br label %248

248:                                              ; preds = %247, %240
  br label %249

249:                                              ; preds = %248, %165
  %250 = load i32, i32* %5, align 4
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 10
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 3
  %255 = load double, double* %254, align 8
  %256 = fptosi double %255 to i32
  %257 = icmp ne i32 %250, %256
  br i1 %257, label %258, label %391

258:                                              ; preds = %249
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 2
  store i32 1, i32* %260, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sitofp i32 %261 to double
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 10
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 3
  %267 = load double, double* %266, align 8
  %268 = fdiv double %262, %267
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 3
  store double %268, double* %270, align 8
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 8
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 9
  %275 = load i32, i32* @RESAMPLER_QUALITY_DONTCARE, align 4
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 3
  %278 = load double, double* %277, align 8
  %279 = call i32 @retro_resampler_realloc(i64* %272, %struct.TYPE_9__** %274, i32* null, i32 %275, double %278)
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 9
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %281, align 8
  %283 = icmp ne %struct.TYPE_9__* %282, null
  br i1 %283, label %284, label %390

284:                                              ; preds = %258
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 8
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %390

289:                                              ; preds = %284
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 10
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = mul nsw i32 %294, 2
  %296 = sitofp i32 %295 to double
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 3
  %299 = load double, double* %298, align 8
  %300 = fmul double %296, %299
  %301 = fmul double %300, 4.000000e+00
  %302 = fptosi double %301 to i32
  %303 = call i64 @memalign_alloc(i32 128, i32 %302)
  %304 = inttoptr i64 %303 to float*
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 4
  store float* %304, float** %306, align 8
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 10
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = mul nsw i32 %311, 3
  %313 = sitofp i32 %312 to double
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 3
  %316 = load double, double* %315, align 8
  %317 = fmul double %313, %316
  %318 = fmul double %317, 4.000000e+00
  %319 = fptosi double %318 to i32
  %320 = call i64 @memalign_alloc(i32 128, i32 %319)
  %321 = inttoptr i64 %320 to float*
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 5
  store float* %321, float** %323, align 8
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 4
  %326 = load float*, float** %325, align 8
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 1
  %329 = load i8**, i8*** %328, align 8
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 10
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = mul nsw i32 %334, 2
  %336 = call i32 @convert_s16_to_float(float* %326, i8** %329, i32 %335, double 1.000000e+00)
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 4
  %339 = load float*, float** %338, align 8
  %340 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %14, i32 0, i32 0
  store float* %339, float** %340, align 8
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 5
  %343 = load float*, float** %342, align 8
  %344 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %14, i32 0, i32 1
  store float* %343, float** %344, align 8
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 10
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %14, i32 0, i32 2
  store i32 %349, i32* %350, align 8
  %351 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %14, i32 0, i32 3
  store i32 0, i32* %351, align 4
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 3
  %354 = load double, double* %353, align 8
  %355 = fptosi double %354 to i32
  %356 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %14, i32 0, i32 4
  store i32 %355, i32* %356, align 8
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 9
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 0
  %361 = load i32 (i64, %struct.resampler_data*)*, i32 (i64, %struct.resampler_data*)** %360, align 8
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 8
  %364 = load i64, i64* %363, align 8
  %365 = call i32 %361(i64 %364, %struct.resampler_data* %14)
  %366 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %14, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = mul nsw i32 %367, 2
  %369 = sext i32 %368 to i64
  %370 = mul i64 %369, 8
  %371 = trunc i64 %370 to i32
  %372 = call i64 @memalign_alloc(i32 128, i32 %371)
  %373 = inttoptr i64 %372 to i8**
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 6
  store i8** %373, i8*** %375, align 8
  %376 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %14, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 7
  store i32 %377, i32* %379, align 8
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 6
  %382 = load i8**, i8*** %381, align 8
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 5
  %385 = load float*, float** %384, align 8
  %386 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %14, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = mul nsw i32 %387, 2
  %389 = call i32 @convert_float_to_s16(i8** %382, float* %385, i32 %388)
  br label %390

390:                                              ; preds = %289, %284, %258
  br label %391

391:                                              ; preds = %390, %249
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %392, %struct.TYPE_8__** %3, align 8
  br label %396

393:                                              ; preds = %244, %52, %24
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %395 = call i32 @audio_mix_free_chunk(%struct.TYPE_8__* %394)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %396

396:                                              ; preds = %393, %391, %19
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %397
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @filestream_read_file(i8*, i8**, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @rwav_load(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @memalign_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i8**, i64, i32) #1

declare dso_local i32 @retro_resampler_realloc(i64*, %struct.TYPE_9__**, i32*, i32, double) #1

declare dso_local i32 @convert_s16_to_float(float*, i8**, i32, double) #1

declare dso_local i32 @convert_float_to_s16(i8**, float*, i32) #1

declare dso_local i32 @audio_mix_free_chunk(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
