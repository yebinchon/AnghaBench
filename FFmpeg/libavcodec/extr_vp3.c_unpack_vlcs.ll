; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp3.c_unpack_vlcs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp3.c_unpack_vlcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, i32***, i32**, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@vlc_table = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Invalid number of coefficients at level %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid zero run of %d with %d coeffs left\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid token %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"More blocks ended than coded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.TYPE_8__*, i32, i32, i32)* @unpack_vlcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_vlcs(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %21, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32***, i32**** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32**, i32*** %38, i64 %40
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %22, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %23, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %24, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @vlc_table, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @VLC_TYPE(i32 %61)
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %21, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %6
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 (i32, i32, i8*, ...) @av_log(i32 %69, i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %7, align 4
  br label %342

74:                                               ; preds = %6
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %21, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %21, align 4
  store i32 %79, i32* %19, align 4
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %19, align 4
  store i32 %84, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %19, align 4
  %90 = shl i32 %89, 2
  %91 = load i32*, i32** %22, align 8
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %85
  br label %97

97:                                               ; preds = %255, %96
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32*, i32** %9, align 8
  %103 = call i64 @get_bits_left(i32* %102)
  %104 = icmp sgt i64 %103, 0
  br label %105

105:                                              ; preds = %101, %97
  %106 = phi i1 [ false, %97 ], [ %104, %101 ]
  br i1 %106, label %107, label %256

107:                                              ; preds = %105
  %108 = load i32*, i32** %9, align 8
  %109 = load i32*, i32** @vlc_table, align 8
  %110 = call i32 @get_vlc2(i32* %108, i32* %109, i32 11, i32 3)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ule i32 %111, 6
  br i1 %112, label %113, label %163

113:                                              ; preds = %107
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @get_eob_run(i32* %114, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @INT_MAX, align 4
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %119, %113
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %20, align 4
  %125 = sub nsw i32 %123, %124
  %126 = icmp sgt i32 %122, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %121
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %20, align 4
  %130 = sub nsw i32 %128, %129
  %131 = call i32 @TOKEN_EOB(i32 %130)
  %132 = load i32*, i32** %22, align 8
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %20, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* %20, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* %13, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %21, align 4
  store i32 %147, i32* %20, align 4
  br label %162

148:                                              ; preds = %121
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @TOKEN_EOB(i32 %149)
  %151 = load i32*, i32** %22, align 8
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 %150, i32* %155, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %162

162:                                              ; preds = %148, %127
  br label %255

163:                                              ; preds = %107
  %164 = load i32, i32* %16, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %247

166:                                              ; preds = %163
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @get_coeff(i32* %167, i32 %168, i32* %18)
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %17, align 4
  %175 = call i32 @TOKEN_ZERO_RUN(i32 %173, i32 %174)
  %176 = load i32*, i32** %22, align 8
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %175, i32* %180, align 4
  br label %203

181:                                              ; preds = %166
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %18, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %187 = load i32*, i32** %23, align 8
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  store i32 %185, i32* %194, align 4
  br label %195

195:                                              ; preds = %184, %181
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @TOKEN_COEFF(i32 %196)
  %198 = load i32*, i32** %22, align 8
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  store i32 %197, i32* %202, align 4
  br label %203

203:                                              ; preds = %195, %172
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %204, %205
  %207 = icmp sgt i32 %206, 64
  br i1 %207, label %208, label %219

208:                                              ; preds = %203
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @AV_LOG_DEBUG, align 4
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %11, align 4
  %215 = sub nsw i32 64, %214
  %216 = call i32 (i32, i32, i8*, ...) @av_log(i32 %211, i32 %212, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %213, i32 %215)
  %217 = load i32, i32* %11, align 4
  %218 = sub nsw i32 64, %217
  store i32 %218, i32* %17, align 4
  br label %219

219:                                              ; preds = %208, %203
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %14, align 4
  br label %222

222:                                              ; preds = %241, %219
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %224, %225
  %227 = icmp sle i32 %223, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %222
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32**, i32*** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %228
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  br label %222

244:                                              ; preds = %222
  %245 = load i32, i32* %20, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %20, align 4
  br label %254

247:                                              ; preds = %163
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @AV_LOG_ERROR, align 4
  %252 = load i32, i32* %16, align 4
  %253 = call i32 (i32, i32, i8*, ...) @av_log(i32 %250, i32 %251, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %252)
  store i32 -1, i32* %7, align 4
  br label %342

254:                                              ; preds = %244
  br label %255

255:                                              ; preds = %254, %162
  br label %97

256:                                              ; preds = %105
  %257 = load i32, i32* %19, align 4
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i32**, i32*** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32*, i32** %260, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp sgt i32 %257, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %256
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @AV_LOG_ERROR, align 4
  %275 = call i32 (i32, i32, i8*, ...) @av_log(i32 %273, i32 %274, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %276

276:                                              ; preds = %270, %256
  %277 = load i32, i32* %19, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %303

279:                                              ; preds = %276
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %14, align 4
  br label %282

282:                                              ; preds = %299, %279
  %283 = load i32, i32* %14, align 4
  %284 = icmp slt i32 %283, 64
  br i1 %284, label %285, label %302

285:                                              ; preds = %282
  %286 = load i32, i32* %19, align 4
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32**, i32*** %288, align 8
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %289, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %14, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %297, %286
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %285
  %300 = load i32, i32* %14, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %14, align 4
  br label %282

302:                                              ; preds = %282
  br label %303

303:                                              ; preds = %302, %276
  %304 = load i32, i32* %12, align 4
  %305 = icmp slt i32 %304, 2
  br i1 %305, label %306, label %322

306:                                              ; preds = %303
  %307 = load i32*, i32** %22, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = load i32***, i32**** %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32**, i32*** %313, i64 %316
  %318 = load i32**, i32*** %317, align 8
  %319 = load i32, i32* %11, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32*, i32** %318, i64 %320
  store i32* %310, i32** %321, align 8
  br label %340

322:                                              ; preds = %303
  %323 = load i32, i32* %11, align 4
  %324 = icmp slt i32 %323, 63
  br i1 %324, label %325, label %339

325:                                              ; preds = %322
  %326 = load i32*, i32** %22, align 8
  %327 = load i32, i32* %15, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 1
  %332 = load i32***, i32**** %331, align 8
  %333 = getelementptr inbounds i32**, i32*** %332, i64 0
  %334 = load i32**, i32*** %333, align 8
  %335 = load i32, i32* %11, align 4
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32*, i32** %334, i64 %337
  store i32* %329, i32** %338, align 8
  br label %339

339:                                              ; preds = %325, %322
  br label %340

340:                                              ; preds = %339, %306
  %341 = load i32, i32* %13, align 4
  store i32 %341, i32* %7, align 4
  br label %342

342:                                              ; preds = %340, %247, %66
  %343 = load i32, i32* %7, align 4
  ret i32 %343
}

declare dso_local i32* @VLC_TYPE(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32*, i32, i32) #1

declare dso_local i32 @get_eob_run(i32*, i32) #1

declare dso_local i32 @TOKEN_EOB(i32) #1

declare dso_local i32 @get_coeff(i32*, i32, i32*) #1

declare dso_local i32 @TOKEN_ZERO_RUN(i32, i32) #1

declare dso_local i32 @TOKEN_COEFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
