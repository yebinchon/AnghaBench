; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_network_gfx.c_network_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_network_gfx.c_network_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }

@network_video_bits = common dso_local global i32 0, align 4
@NETWORK_VIDEO_PIXELFORMAT_RGB565 = common dso_local global i32 0, align 4
@network_video_width = common dso_local global i32 0, align 4
@network_video_height = common dso_local global i32 0, align 4
@network_video_pitch = common dso_local global i32 0, align 4
@network_menu_frame = common dso_local global i8* null, align 8
@network_menu_width = common dso_local global i32 0, align 4
@network_menu_height = common dso_local global i32 0, align 4
@network_menu_pitch = common dso_local global i32 0, align 4
@network_menu_bits = common dso_local global i32 0, align 4
@network_video_temp_buf = common dso_local global i32* null, align 8
@NETWORK_VIDEO_PIXELFORMAT_RGBA8888 = common dso_local global i32 0, align 4
@NETWORK_VIDEO_PIXELFORMAT_BGRA8888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_6__*)* @network_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_6__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_7__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i16, align 2
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i16, align 2
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %17, align 8
  %47 = load i8*, i8** %11, align 8
  store i8* %47, i8** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %48 = load i32, i32* @network_video_bits, align 4
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* @NETWORK_VIDEO_PIXELFORMAT_RGB565, align 4
  store i32 %49, i32* %23, align 4
  store i32 1, i32* %24, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %25, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %8
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57, %54, %8
  store i32 1, i32* %9, align 4
  br label %473

61:                                               ; preds = %57
  %62 = load i32, i32* @network_video_width, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @network_video_height, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @network_video_pitch, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69, %65, %61
  %74 = load i32, i32* %12, align 4
  %75 = icmp ugt i32 %74, 4
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = icmp ugt i32 %77, 4
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* @network_video_width, align 4
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* @network_video_height, align 4
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* @network_video_pitch, align 4
  %83 = load i32, i32* @network_video_width, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @network_video_height, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %79, %76, %73
  br label %90

90:                                               ; preds = %89, %69
  %91 = load i8*, i8** @network_menu_frame, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i8*, i8** @network_menu_frame, align 8
  store i8* %99, i8** %19, align 8
  %100 = load i32, i32* @network_menu_width, align 4
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* @network_menu_height, align 4
  store i32 %101, i32* %21, align 4
  %102 = load i32, i32* @network_menu_pitch, align 4
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* @network_menu_bits, align 4
  store i32 %103, i32* %22, align 4
  br label %129

104:                                              ; preds = %93, %90
  %105 = load i32, i32* @network_video_width, align 4
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* @network_video_height, align 4
  store i32 %106, i32* %21, align 4
  %107 = load i32, i32* @network_video_pitch, align 4
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 4
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %21, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 0, i32* %24, align 4
  br label %122

122:                                              ; preds = %121, %117, %113, %110, %104
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 0, i32* %24, align 4
  br label %128

128:                                              ; preds = %127, %122
  br label %129

129:                                              ; preds = %128, %98
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %21, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %135, %129
  %142 = load i32, i32* %20, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %21, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load i32*, i32** @network_video_temp_buf, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = load i32*, i32** @network_video_temp_buf, align 8
  %152 = call i32 @free(i32* %151)
  br label %153

153:                                              ; preds = %150, %141
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = mul i32 %156, %159
  %161 = zext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = call i64 @malloc(i32 %163)
  %165 = inttoptr i64 %164 to i32*
  store i32* %165, i32** @network_video_temp_buf, align 8
  br label %166

166:                                              ; preds = %153, %135
  %167 = load i32, i32* %22, align 4
  %168 = icmp eq i32 %167, 16
  br i1 %168, label %169, label %368

169:                                              ; preds = %166
  %170 = load i32*, i32** @network_video_temp_buf, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %366

172:                                              ; preds = %169
  %173 = load i8*, i8** %19, align 8
  %174 = load i8*, i8** @network_menu_frame, align 8
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %176, label %269

176:                                              ; preds = %172
  store i32 0, i32* %27, align 4
  br label %177

177:                                              ; preds = %262, %176
  %178 = load i32, i32* %27, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ult i32 %178, %181
  br i1 %182, label %183, label %265

183:                                              ; preds = %177
  store i32 0, i32* %26, align 4
  br label %184

184:                                              ; preds = %258, %183
  %185 = load i32, i32* %26, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ult i32 %185, %188
  br i1 %189, label %190, label %261

190:                                              ; preds = %184
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* %26, align 4
  %193 = mul i32 %191, %192
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = udiv i32 %193, %196
  store i32 %197, i32* %28, align 4
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %27, align 4
  %200 = mul i32 %198, %199
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = udiv i32 %200, %203
  store i32 %204, i32* %29, align 4
  %205 = load i8*, i8** %19, align 8
  %206 = bitcast i8* %205 to i16*
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %29, align 4
  %209 = mul i32 %207, %208
  %210 = load i32, i32* %28, align 4
  %211 = add i32 %209, %210
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i16, i16* %206, i64 %212
  %214 = load i16, i16* %213, align 2
  store i16 %214, i16* %30, align 2
  %215 = load i16, i16* %30, align 2
  %216 = zext i16 %215 to i32
  %217 = and i32 %216, 61440
  %218 = shl i32 %217, 8
  %219 = load i16, i16* %30, align 2
  %220 = zext i16 %219 to i32
  %221 = and i32 %220, 61440
  %222 = shl i32 %221, 4
  %223 = or i32 %218, %222
  store i32 %223, i32* %31, align 4
  %224 = load i16, i16* %30, align 2
  %225 = zext i16 %224 to i32
  %226 = and i32 %225, 3840
  %227 = shl i32 %226, 4
  %228 = load i16, i16* %30, align 2
  %229 = zext i16 %228 to i32
  %230 = and i32 %229, 3840
  %231 = shl i32 %230, 0
  %232 = or i32 %227, %231
  store i32 %232, i32* %32, align 4
  %233 = load i16, i16* %30, align 2
  %234 = zext i16 %233 to i32
  %235 = and i32 %234, 240
  %236 = shl i32 %235, 0
  %237 = load i16, i16* %30, align 2
  %238 = zext i16 %237 to i32
  %239 = and i32 %238, 240
  %240 = ashr i32 %239, 4
  %241 = or i32 %236, %240
  store i32 %241, i32* %33, align 4
  %242 = load i32, i32* %33, align 4
  %243 = or i32 -16777216, %242
  %244 = load i32, i32* %32, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* %31, align 4
  %247 = or i32 %245, %246
  %248 = load i32*, i32** @network_video_temp_buf, align 8
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %27, align 4
  %253 = mul i32 %251, %252
  %254 = load i32, i32* %26, align 4
  %255 = add i32 %253, %254
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %248, i64 %256
  store i32 %247, i32* %257, align 4
  br label %258

258:                                              ; preds = %190
  %259 = load i32, i32* %26, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %26, align 4
  br label %184

261:                                              ; preds = %184
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %27, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %27, align 4
  br label %177

265:                                              ; preds = %177
  %266 = load i32, i32* @NETWORK_VIDEO_PIXELFORMAT_RGBA8888, align 4
  store i32 %266, i32* %23, align 4
  %267 = load i32*, i32** @network_video_temp_buf, align 8
  %268 = bitcast i32* %267 to i8*
  store i8* %268, i8** %19, align 8
  br label %365

269:                                              ; preds = %172
  store i32 0, i32* %35, align 4
  br label %270

270:                                              ; preds = %358, %269
  %271 = load i32, i32* %35, align 4
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = icmp ult i32 %271, %274
  br i1 %275, label %276, label %361

276:                                              ; preds = %270
  store i32 0, i32* %34, align 4
  br label %277

277:                                              ; preds = %354, %276
  %278 = load i32, i32* %34, align 4
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp ult i32 %278, %281
  br i1 %282, label %283, label %357

283:                                              ; preds = %277
  %284 = load i32, i32* %20, align 4
  %285 = load i32, i32* %34, align 4
  %286 = mul i32 %284, %285
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = udiv i32 %286, %289
  store i32 %290, i32* %36, align 4
  %291 = load i32, i32* %21, align 4
  %292 = load i32, i32* %35, align 4
  %293 = mul i32 %291, %292
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = udiv i32 %293, %296
  store i32 %297, i32* %37, align 4
  %298 = load i8*, i8** %19, align 8
  %299 = bitcast i8* %298 to i16*
  %300 = load i32, i32* %15, align 4
  %301 = load i32, i32* %22, align 4
  %302 = udiv i32 %301, 8
  %303 = udiv i32 %300, %302
  %304 = load i32, i32* %37, align 4
  %305 = mul i32 %303, %304
  %306 = load i32, i32* %36, align 4
  %307 = add i32 %305, %306
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds i16, i16* %299, i64 %308
  %310 = load i16, i16* %309, align 2
  store i16 %310, i16* %38, align 2
  %311 = load i16, i16* %38, align 2
  %312 = zext i16 %311 to i32
  %313 = and i32 %312, 31
  %314 = shl i32 %313, 3
  %315 = load i16, i16* %38, align 2
  %316 = zext i16 %315 to i32
  %317 = and i32 %316, 28
  %318 = ashr i32 %317, 2
  %319 = or i32 %314, %318
  store i32 %319, i32* %39, align 4
  %320 = load i16, i16* %38, align 2
  %321 = zext i16 %320 to i32
  %322 = and i32 %321, 2016
  %323 = shl i32 %322, 5
  %324 = load i16, i16* %38, align 2
  %325 = zext i16 %324 to i32
  %326 = and i32 %325, 1536
  %327 = ashr i32 %326, 1
  %328 = or i32 %323, %327
  store i32 %328, i32* %40, align 4
  %329 = load i16, i16* %38, align 2
  %330 = zext i16 %329 to i32
  %331 = and i32 %330, 63488
  %332 = shl i32 %331, 8
  %333 = load i16, i16* %38, align 2
  %334 = zext i16 %333 to i32
  %335 = and i32 %334, 57344
  %336 = shl i32 %335, 3
  %337 = or i32 %332, %336
  store i32 %337, i32* %41, align 4
  %338 = load i32, i32* %41, align 4
  %339 = or i32 -16777216, %338
  %340 = load i32, i32* %40, align 4
  %341 = or i32 %339, %340
  %342 = load i32, i32* %39, align 4
  %343 = or i32 %341, %342
  %344 = load i32*, i32** @network_video_temp_buf, align 8
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* %35, align 4
  %349 = mul i32 %347, %348
  %350 = load i32, i32* %34, align 4
  %351 = add i32 %349, %350
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %344, i64 %352
  store i32 %343, i32* %353, align 4
  br label %354

354:                                              ; preds = %283
  %355 = load i32, i32* %34, align 4
  %356 = add i32 %355, 1
  store i32 %356, i32* %34, align 4
  br label %277

357:                                              ; preds = %277
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %35, align 4
  %360 = add i32 %359, 1
  store i32 %360, i32* %35, align 4
  br label %270

361:                                              ; preds = %270
  %362 = load i32, i32* @NETWORK_VIDEO_PIXELFORMAT_BGRA8888, align 4
  store i32 %362, i32* %23, align 4
  %363 = load i32*, i32** @network_video_temp_buf, align 8
  %364 = bitcast i32* %363 to i8*
  store i8* %364, i8** %19, align 8
  br label %365

365:                                              ; preds = %361, %265
  br label %367

366:                                              ; preds = %169
  br label %367

367:                                              ; preds = %366, %365
  br label %432

368:                                              ; preds = %166
  store i32 0, i32* %43, align 4
  br label %369

369:                                              ; preds = %425, %368
  %370 = load i32, i32* %43, align 4
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = icmp ult i32 %370, %373
  br i1 %374, label %375, label %428

375:                                              ; preds = %369
  store i32 0, i32* %42, align 4
  br label %376

376:                                              ; preds = %421, %375
  %377 = load i32, i32* %42, align 4
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp ult i32 %377, %380
  br i1 %381, label %382, label %424

382:                                              ; preds = %376
  %383 = load i32, i32* %20, align 4
  %384 = load i32, i32* %42, align 4
  %385 = mul i32 %383, %384
  %386 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = udiv i32 %385, %388
  store i32 %389, i32* %44, align 4
  %390 = load i32, i32* %21, align 4
  %391 = load i32, i32* %43, align 4
  %392 = mul i32 %390, %391
  %393 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = udiv i32 %392, %395
  store i32 %396, i32* %45, align 4
  %397 = load i8*, i8** %19, align 8
  %398 = bitcast i8* %397 to i32*
  %399 = load i32, i32* %15, align 4
  %400 = load i32, i32* %22, align 4
  %401 = udiv i32 %400, 8
  %402 = udiv i32 %399, %401
  %403 = load i32, i32* %45, align 4
  %404 = mul i32 %402, %403
  %405 = load i32, i32* %44, align 4
  %406 = add i32 %404, %405
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %398, i64 %407
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* %46, align 4
  %410 = load i32, i32* %46, align 4
  %411 = load i32*, i32** @network_video_temp_buf, align 8
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* %43, align 4
  %416 = mul i32 %414, %415
  %417 = load i32, i32* %42, align 4
  %418 = add i32 %416, %417
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %411, i64 %419
  store i32 %410, i32* %420, align 4
  br label %421

421:                                              ; preds = %382
  %422 = load i32, i32* %42, align 4
  %423 = add i32 %422, 1
  store i32 %423, i32* %42, align 4
  br label %376

424:                                              ; preds = %376
  br label %425

425:                                              ; preds = %424
  %426 = load i32, i32* %43, align 4
  %427 = add i32 %426, 1
  store i32 %427, i32* %43, align 4
  br label %369

428:                                              ; preds = %369
  %429 = load i32, i32* @NETWORK_VIDEO_PIXELFORMAT_BGRA8888, align 4
  store i32 %429, i32* %23, align 4
  %430 = load i32*, i32** @network_video_temp_buf, align 8
  %431 = bitcast i32* %430 to i8*
  store i8* %431, i8** %19, align 8
  br label %432

432:                                              ; preds = %428, %367
  %433 = load i32, i32* %24, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %465

435:                                              ; preds = %432
  %436 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = icmp ugt i32 %438, 0
  br i1 %439, label %440, label %465

440:                                              ; preds = %435
  %441 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = icmp ugt i32 %443, 0
  br i1 %444, label %445, label %465

445:                                              ; preds = %440
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 4
  %448 = load i64, i64* %447, align 8
  %449 = icmp sgt i64 %448, 0
  br i1 %449, label %450, label %464

450:                                              ; preds = %445
  %451 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 4
  %453 = load i64, i64* %452, align 8
  %454 = load i8*, i8** %19, align 8
  %455 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = mul i32 %457, %460
  %462 = mul i32 %461, 4
  %463 = call i32 @socket_send_all_blocking(i64 %453, i8* %454, i32 %462, i32 1)
  br label %464

464:                                              ; preds = %450, %445
  br label %465

465:                                              ; preds = %464, %440, %435, %432
  %466 = load i8*, i8** %16, align 8
  %467 = icmp ne i8* %466, null
  br i1 %467, label %468, label %472

468:                                              ; preds = %465
  %469 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %470 = load i8*, i8** %16, align 8
  %471 = call i32 @font_driver_render_msg(%struct.TYPE_6__* %469, i32* null, i8* %470, i32* null)
  br label %472

472:                                              ; preds = %468, %465
  store i32 1, i32* %9, align 4
  br label %473

473:                                              ; preds = %472, %60
  %474 = load i32, i32* %9, align 4
  ret i32 %474
}

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @socket_send_all_blocking(i64, i8*, i32, i32) #1

declare dso_local i32 @font_driver_render_msg(%struct.TYPE_6__*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
