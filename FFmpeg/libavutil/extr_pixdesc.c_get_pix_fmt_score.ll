; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_get_pix_fmt_score.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_get_pix_fmt_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@FF_LOSS_DEPTH = common dso_local global i32 0, align 4
@FF_LOSS_RESOLUTION = common dso_local global i32 0, align 4
@FF_LOSS_COLORSPACE = common dso_local global i32 0, align 4
@FF_LOSS_CHROMA = common dso_local global i32 0, align 4
@FF_LOSS_ALPHA = common dso_local global i32 0, align 4
@FF_LOSS_COLORQUANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @get_pix_fmt_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pix_fmt_score(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.TYPE_7__* @av_pix_fmt_desc_get(i32 %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_7__* @av_pix_fmt_desc_get(i32 %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %11, align 8
  %28 = load i32, i32* @INT_MAX, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %22, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %4
  store i32 -4, i32* %5, align 4
  br label %366

36:                                               ; preds = %32
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43, %36
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %366

55:                                               ; preds = %50
  store i32 -2, i32* %5, align 4
  br label %366

56:                                               ; preds = %43
  store i32 0, i32* %19, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @INT_MAX, align 4
  store i32 %62, i32* %5, align 4
  br label %366

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @get_pix_fmt_depth(i32* %14, i32* %15, i32 %64)
  store i32 %65, i32* %18, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -3, i32* %5, align 4
  br label %366

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @get_pix_fmt_depth(i32* %16, i32* %17, i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -3, i32* %5, align 4
  br label %366

73:                                               ; preds = %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = call i32 @get_color_type(%struct.TYPE_7__* %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %77 = call i32 @get_color_type(%struct.TYPE_7__* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @FFMIN(i32 %84, i32 4)
  store i32 %85, i32* %21, align 4
  br label %94

86:                                               ; preds = %73
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @FFMIN(i32 %89, i32 %92)
  store i32 %93, i32* %21, align 4
  br label %94

94:                                               ; preds = %86, %81
  store i32 0, i32* %20, align 4
  br label %95

95:                                               ; preds = %143, %94
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %21, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %146

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %21, align 4
  %105 = sdiv i32 7, %104
  br label %116

106:                                              ; preds = %99
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  br label %116

116:                                              ; preds = %106, %103
  %117 = phi i32 [ %105, %103 ], [ %115, %106 ]
  store i32 %117, i32* %23, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %20, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %23, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %116
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @FF_LOSS_DEPTH, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i32, i32* @FF_LOSS_DEPTH, align 4
  %136 = load i32, i32* %19, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %23, align 4
  %139 = ashr i32 65536, %138
  %140 = load i32, i32* %22, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %22, align 4
  br label %142

142:                                              ; preds = %134, %129, %116
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %20, align 4
  br label %95

146:                                              ; preds = %95
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @FF_LOSS_RESOLUTION, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %211

151:                                              ; preds = %146
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %154, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %151
  %160 = load i32, i32* @FF_LOSS_RESOLUTION, align 4
  %161 = load i32, i32* %19, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %19, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = shl i32 256, %165
  %167 = load i32, i32* %22, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %22, align 4
  br label %169

169:                                              ; preds = %159, %151
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %172, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %169
  %178 = load i32, i32* @FF_LOSS_RESOLUTION, align 4
  %179 = load i32, i32* %19, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %19, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 256, %183
  %185 = load i32, i32* %22, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %22, align 4
  br label %187

187:                                              ; preds = %177, %169
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %210

192:                                              ; preds = %187
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %192
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %210

202:                                              ; preds = %197
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i32, i32* %22, align 4
  %209 = add nsw i32 %208, 512
  store i32 %209, i32* %22, align 4
  br label %210

210:                                              ; preds = %207, %202, %197, %192, %187
  br label %211

211:                                              ; preds = %210, %146
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @FF_LOSS_COLORSPACE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %269

216:                                              ; preds = %211
  %217 = load i32, i32* %13, align 4
  switch i32 %217, label %259 [
    i32 130, label %218
    i32 131, label %229
    i32 129, label %237
    i32 128, label %245
  ]

218:                                              ; preds = %216
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 130
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load i32, i32* %12, align 4
  %223 = icmp ne i32 %222, 131
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i32, i32* @FF_LOSS_COLORSPACE, align 4
  %226 = load i32, i32* %19, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %19, align 4
  br label %228

228:                                              ; preds = %224, %221, %218
  br label %268

229:                                              ; preds = %216
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 131
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load i32, i32* @FF_LOSS_COLORSPACE, align 4
  %234 = load i32, i32* %19, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %19, align 4
  br label %236

236:                                              ; preds = %232, %229
  br label %268

237:                                              ; preds = %216
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 129
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load i32, i32* @FF_LOSS_COLORSPACE, align 4
  %242 = load i32, i32* %19, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %19, align 4
  br label %244

244:                                              ; preds = %240, %237
  br label %268

245:                                              ; preds = %216
  %246 = load i32, i32* %12, align 4
  %247 = icmp ne i32 %246, 128
  br i1 %247, label %248, label %258

248:                                              ; preds = %245
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 129
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = load i32, i32* %12, align 4
  %253 = icmp ne i32 %252, 131
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load i32, i32* @FF_LOSS_COLORSPACE, align 4
  %256 = load i32, i32* %19, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %19, align 4
  br label %258

258:                                              ; preds = %254, %251, %248, %245
  br label %268

259:                                              ; preds = %216
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* %13, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load i32, i32* @FF_LOSS_COLORSPACE, align 4
  %265 = load i32, i32* %19, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %19, align 4
  br label %267

267:                                              ; preds = %263, %259
  br label %268

268:                                              ; preds = %267, %258, %244, %236, %228
  br label %269

269:                                              ; preds = %268, %211
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* @FF_LOSS_COLORSPACE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %295

274:                                              ; preds = %269
  %275 = load i32, i32* %21, align 4
  %276 = mul nsw i32 %275, 65536
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i64 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 %282, 1
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 4
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %289, 1
  %291 = call i32 @FFMIN(i32 %283, i32 %290)
  %292 = ashr i32 %276, %291
  %293 = load i32, i32* %22, align 4
  %294 = sub nsw i32 %293, %292
  store i32 %294, i32* %22, align 4
  br label %295

295:                                              ; preds = %274, %269
  %296 = load i32, i32* %13, align 4
  %297 = icmp eq i32 %296, 131
  br i1 %297, label %298, label %312

298:                                              ; preds = %295
  %299 = load i32, i32* %12, align 4
  %300 = icmp ne i32 %299, 131
  br i1 %300, label %301, label %312

301:                                              ; preds = %298
  %302 = load i32, i32* %9, align 4
  %303 = load i32, i32* @FF_LOSS_CHROMA, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %301
  %307 = load i32, i32* @FF_LOSS_CHROMA, align 4
  %308 = load i32, i32* %19, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %19, align 4
  %310 = load i32, i32* %22, align 4
  %311 = sub nsw i32 %310, 131072
  store i32 %311, i32* %22, align 4
  br label %312

312:                                              ; preds = %306, %301, %298, %295
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %314 = call i64 @pixdesc_has_alpha(%struct.TYPE_7__* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %331, label %316

316:                                              ; preds = %312
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %318 = call i64 @pixdesc_has_alpha(%struct.TYPE_7__* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %331

320:                                              ; preds = %316
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* @FF_LOSS_ALPHA, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %320
  %326 = load i32, i32* @FF_LOSS_ALPHA, align 4
  %327 = load i32, i32* %19, align 4
  %328 = or i32 %327, %326
  store i32 %328, i32* %19, align 4
  %329 = load i32, i32* %22, align 4
  %330 = sub nsw i32 %329, 65536
  store i32 %330, i32* %22, align 4
  br label %331

331:                                              ; preds = %325, %320, %316, %312
  %332 = load i32, i32* %6, align 4
  %333 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %362

335:                                              ; preds = %331
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* @FF_LOSS_COLORQUANT, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %362

340:                                              ; preds = %335
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %343 = icmp ne i32 %341, %342
  br i1 %343, label %344, label %362

344:                                              ; preds = %340
  %345 = load i32, i32* %12, align 4
  %346 = icmp ne i32 %345, 131
  br i1 %346, label %356, label %347

347:                                              ; preds = %344
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %349 = call i64 @pixdesc_has_alpha(%struct.TYPE_7__* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %362

351:                                              ; preds = %347
  %352 = load i32, i32* %9, align 4
  %353 = load i32, i32* @FF_LOSS_ALPHA, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %351, %344
  %357 = load i32, i32* @FF_LOSS_COLORQUANT, align 4
  %358 = load i32, i32* %19, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %19, align 4
  %360 = load i32, i32* %22, align 4
  %361 = sub nsw i32 %360, 65536
  store i32 %361, i32* %22, align 4
  br label %362

362:                                              ; preds = %356, %351, %347, %340, %335, %331
  %363 = load i32, i32* %19, align 4
  %364 = load i32*, i32** %8, align 8
  store i32 %363, i32* %364, align 4
  %365 = load i32, i32* %22, align 4
  store i32 %365, i32* %5, align 4
  br label %366

366:                                              ; preds = %362, %72, %67, %61, %55, %54, %35
  %367 = load i32, i32* %5, align 4
  ret i32 %367
}

declare dso_local %struct.TYPE_7__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @get_pix_fmt_depth(i32*, i32*, i32) #1

declare dso_local i32 @get_color_type(%struct.TYPE_7__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @pixdesc_has_alpha(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
