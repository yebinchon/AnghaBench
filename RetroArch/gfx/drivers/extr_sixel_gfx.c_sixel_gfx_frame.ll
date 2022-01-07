; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sixel_gfx.c_sixel_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sixel_gfx.c_sixel_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@sixel_video_bits = common dso_local global i32 0, align 4
@SIXEL_PIXELFORMAT_RGB565 = common dso_local global i32 0, align 4
@sixel_video_width = common dso_local global i32 0, align 4
@sixel_video_height = common dso_local global i32 0, align 4
@sixel_video_pitch = common dso_local global i32 0, align 4
@sixel_video_scale = common dso_local global i32 0, align 4
@sixel_menu_frame = common dso_local global i8* null, align 8
@sixel_menu_width = common dso_local global i32 0, align 4
@sixel_menu_height = common dso_local global i32 0, align 4
@sixel_menu_pitch = common dso_local global i32 0, align 4
@sixel_menu_bits = common dso_local global i32 0, align 4
@sixel_temp_buf = common dso_local global i32* null, align 8
@SIXEL_PIXELFORMAT_RGBA8888 = common dso_local global i32 0, align 4
@SIXEL_PIXELFORMAT_BGRA8888 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\1B8\00", align 1
@SIXEL_COLORS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_6__*)* @sixel_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sixel_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_6__* %7) #0 {
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
  %48 = load i32, i32* @sixel_video_bits, align 4
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* @SIXEL_PIXELFORMAT_RGB565, align 4
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
  br label %489

61:                                               ; preds = %57
  %62 = load i32, i32* @sixel_video_width, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @sixel_video_height, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @sixel_video_pitch, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %69, %65, %61
  %74 = load i32, i32* %12, align 4
  %75 = icmp ugt i32 %74, 4
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = icmp ugt i32 %77, 4
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* @sixel_video_width, align 4
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* @sixel_video_height, align 4
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* @sixel_video_pitch, align 4
  %83 = load i32, i32* @sixel_video_width, align 4
  %84 = load i32, i32* @sixel_video_scale, align 4
  %85 = mul i32 %83, %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @sixel_video_height, align 4
  %89 = load i32, i32* @sixel_video_scale, align 4
  %90 = mul i32 %88, %89
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %79, %76, %73
  br label %94

94:                                               ; preds = %93, %69
  %95 = load i8*, i8** @sixel_menu_frame, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i8*, i8** @sixel_menu_frame, align 8
  store i8* %103, i8** %19, align 8
  %104 = load i32, i32* @sixel_menu_width, align 4
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* @sixel_menu_height, align 4
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* @sixel_menu_pitch, align 4
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* @sixel_menu_bits, align 4
  store i32 %107, i32* %22, align 4
  br label %133

108:                                              ; preds = %97, %94
  %109 = load i32, i32* @sixel_video_width, align 4
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* @sixel_video_height, align 4
  store i32 %110, i32* %21, align 4
  %111 = load i32, i32* @sixel_video_pitch, align 4
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 4
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %21, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 0, i32* %24, align 4
  br label %126

126:                                              ; preds = %125, %121, %117, %114, %108
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 0, i32* %24, align 4
  br label %132

132:                                              ; preds = %131, %126
  br label %133

133:                                              ; preds = %132, %102
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %20, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %21, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %174

145:                                              ; preds = %139, %133
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @scroll_on_demand(i32 %148)
  %150 = load i32, i32* %20, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %21, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** @sixel_temp_buf, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %145
  %159 = load i32*, i32** @sixel_temp_buf, align 8
  %160 = call i32 @free(i32* %159)
  br label %161

161:                                              ; preds = %158, %145
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = mul i32 %164, %167
  %169 = zext i32 %168 to i64
  %170 = mul i64 %169, 4
  %171 = trunc i64 %170 to i32
  %172 = call i64 @malloc(i32 %171)
  %173 = inttoptr i64 %172 to i32*
  store i32* %173, i32** @sixel_temp_buf, align 8
  br label %174

174:                                              ; preds = %161, %139
  %175 = load i32, i32* %22, align 4
  %176 = icmp eq i32 %175, 16
  br i1 %176, label %177, label %376

177:                                              ; preds = %174
  %178 = load i32*, i32** @sixel_temp_buf, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %374

180:                                              ; preds = %177
  %181 = load i8*, i8** %19, align 8
  %182 = load i8*, i8** @sixel_menu_frame, align 8
  %183 = icmp eq i8* %181, %182
  br i1 %183, label %184, label %277

184:                                              ; preds = %180
  store i32 0, i32* %27, align 4
  br label %185

185:                                              ; preds = %270, %184
  %186 = load i32, i32* %27, align 4
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp ult i32 %186, %189
  br i1 %190, label %191, label %273

191:                                              ; preds = %185
  store i32 0, i32* %26, align 4
  br label %192

192:                                              ; preds = %266, %191
  %193 = load i32, i32* %26, align 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ult i32 %193, %196
  br i1 %197, label %198, label %269

198:                                              ; preds = %192
  %199 = load i32, i32* %20, align 4
  %200 = load i32, i32* %26, align 4
  %201 = mul i32 %199, %200
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = udiv i32 %201, %204
  store i32 %205, i32* %28, align 4
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %27, align 4
  %208 = mul i32 %206, %207
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = udiv i32 %208, %211
  store i32 %212, i32* %29, align 4
  %213 = load i8*, i8** %19, align 8
  %214 = bitcast i8* %213 to i16*
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* %29, align 4
  %217 = mul i32 %215, %216
  %218 = load i32, i32* %28, align 4
  %219 = add i32 %217, %218
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i16, i16* %214, i64 %220
  %222 = load i16, i16* %221, align 2
  store i16 %222, i16* %30, align 2
  %223 = load i16, i16* %30, align 2
  %224 = zext i16 %223 to i32
  %225 = and i32 %224, 61440
  %226 = shl i32 %225, 8
  %227 = load i16, i16* %30, align 2
  %228 = zext i16 %227 to i32
  %229 = and i32 %228, 61440
  %230 = shl i32 %229, 4
  %231 = or i32 %226, %230
  store i32 %231, i32* %31, align 4
  %232 = load i16, i16* %30, align 2
  %233 = zext i16 %232 to i32
  %234 = and i32 %233, 3840
  %235 = shl i32 %234, 4
  %236 = load i16, i16* %30, align 2
  %237 = zext i16 %236 to i32
  %238 = and i32 %237, 3840
  %239 = shl i32 %238, 0
  %240 = or i32 %235, %239
  store i32 %240, i32* %32, align 4
  %241 = load i16, i16* %30, align 2
  %242 = zext i16 %241 to i32
  %243 = and i32 %242, 240
  %244 = shl i32 %243, 0
  %245 = load i16, i16* %30, align 2
  %246 = zext i16 %245 to i32
  %247 = and i32 %246, 240
  %248 = ashr i32 %247, 4
  %249 = or i32 %244, %248
  store i32 %249, i32* %33, align 4
  %250 = load i32, i32* %33, align 4
  %251 = or i32 -16777216, %250
  %252 = load i32, i32* %32, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* %31, align 4
  %255 = or i32 %253, %254
  %256 = load i32*, i32** @sixel_temp_buf, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %27, align 4
  %261 = mul i32 %259, %260
  %262 = load i32, i32* %26, align 4
  %263 = add i32 %261, %262
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %256, i64 %264
  store i32 %255, i32* %265, align 4
  br label %266

266:                                              ; preds = %198
  %267 = load i32, i32* %26, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %26, align 4
  br label %192

269:                                              ; preds = %192
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %27, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %27, align 4
  br label %185

273:                                              ; preds = %185
  %274 = load i32, i32* @SIXEL_PIXELFORMAT_RGBA8888, align 4
  store i32 %274, i32* %23, align 4
  %275 = load i32*, i32** @sixel_temp_buf, align 8
  %276 = bitcast i32* %275 to i8*
  store i8* %276, i8** %19, align 8
  br label %373

277:                                              ; preds = %180
  store i32 0, i32* %35, align 4
  br label %278

278:                                              ; preds = %366, %277
  %279 = load i32, i32* %35, align 4
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp ult i32 %279, %282
  br i1 %283, label %284, label %369

284:                                              ; preds = %278
  store i32 0, i32* %34, align 4
  br label %285

285:                                              ; preds = %362, %284
  %286 = load i32, i32* %34, align 4
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = icmp ult i32 %286, %289
  br i1 %290, label %291, label %365

291:                                              ; preds = %285
  %292 = load i32, i32* %20, align 4
  %293 = load i32, i32* %34, align 4
  %294 = mul i32 %292, %293
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = udiv i32 %294, %297
  store i32 %298, i32* %36, align 4
  %299 = load i32, i32* %21, align 4
  %300 = load i32, i32* %35, align 4
  %301 = mul i32 %299, %300
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = udiv i32 %301, %304
  store i32 %305, i32* %37, align 4
  %306 = load i8*, i8** %19, align 8
  %307 = bitcast i8* %306 to i16*
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* %22, align 4
  %310 = udiv i32 %309, 8
  %311 = udiv i32 %308, %310
  %312 = load i32, i32* %37, align 4
  %313 = mul i32 %311, %312
  %314 = load i32, i32* %36, align 4
  %315 = add i32 %313, %314
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds i16, i16* %307, i64 %316
  %318 = load i16, i16* %317, align 2
  store i16 %318, i16* %38, align 2
  %319 = load i16, i16* %38, align 2
  %320 = zext i16 %319 to i32
  %321 = and i32 %320, 31
  %322 = shl i32 %321, 3
  %323 = load i16, i16* %38, align 2
  %324 = zext i16 %323 to i32
  %325 = and i32 %324, 28
  %326 = ashr i32 %325, 2
  %327 = or i32 %322, %326
  store i32 %327, i32* %39, align 4
  %328 = load i16, i16* %38, align 2
  %329 = zext i16 %328 to i32
  %330 = and i32 %329, 2016
  %331 = shl i32 %330, 5
  %332 = load i16, i16* %38, align 2
  %333 = zext i16 %332 to i32
  %334 = and i32 %333, 1536
  %335 = ashr i32 %334, 1
  %336 = or i32 %331, %335
  store i32 %336, i32* %40, align 4
  %337 = load i16, i16* %38, align 2
  %338 = zext i16 %337 to i32
  %339 = and i32 %338, 63488
  %340 = shl i32 %339, 8
  %341 = load i16, i16* %38, align 2
  %342 = zext i16 %341 to i32
  %343 = and i32 %342, 57344
  %344 = shl i32 %343, 3
  %345 = or i32 %340, %344
  store i32 %345, i32* %41, align 4
  %346 = load i32, i32* %41, align 4
  %347 = or i32 -16777216, %346
  %348 = load i32, i32* %40, align 4
  %349 = or i32 %347, %348
  %350 = load i32, i32* %39, align 4
  %351 = or i32 %349, %350
  %352 = load i32*, i32** @sixel_temp_buf, align 8
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %35, align 4
  %357 = mul i32 %355, %356
  %358 = load i32, i32* %34, align 4
  %359 = add i32 %357, %358
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %352, i64 %360
  store i32 %351, i32* %361, align 4
  br label %362

362:                                              ; preds = %291
  %363 = load i32, i32* %34, align 4
  %364 = add i32 %363, 1
  store i32 %364, i32* %34, align 4
  br label %285

365:                                              ; preds = %285
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %35, align 4
  %368 = add i32 %367, 1
  store i32 %368, i32* %35, align 4
  br label %278

369:                                              ; preds = %278
  %370 = load i32, i32* @SIXEL_PIXELFORMAT_BGRA8888, align 4
  store i32 %370, i32* %23, align 4
  %371 = load i32*, i32** @sixel_temp_buf, align 8
  %372 = bitcast i32* %371 to i8*
  store i8* %372, i8** %19, align 8
  br label %373

373:                                              ; preds = %369, %273
  br label %375

374:                                              ; preds = %177
  br label %375

375:                                              ; preds = %374, %373
  br label %440

376:                                              ; preds = %174
  store i32 0, i32* %43, align 4
  br label %377

377:                                              ; preds = %433, %376
  %378 = load i32, i32* %43, align 4
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = icmp ult i32 %378, %381
  br i1 %382, label %383, label %436

383:                                              ; preds = %377
  store i32 0, i32* %42, align 4
  br label %384

384:                                              ; preds = %429, %383
  %385 = load i32, i32* %42, align 4
  %386 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = icmp ult i32 %385, %388
  br i1 %389, label %390, label %432

390:                                              ; preds = %384
  %391 = load i32, i32* %20, align 4
  %392 = load i32, i32* %42, align 4
  %393 = mul i32 %391, %392
  %394 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = udiv i32 %393, %396
  store i32 %397, i32* %44, align 4
  %398 = load i32, i32* %21, align 4
  %399 = load i32, i32* %43, align 4
  %400 = mul i32 %398, %399
  %401 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = udiv i32 %400, %403
  store i32 %404, i32* %45, align 4
  %405 = load i8*, i8** %19, align 8
  %406 = bitcast i8* %405 to i32*
  %407 = load i32, i32* %15, align 4
  %408 = load i32, i32* %22, align 4
  %409 = udiv i32 %408, 8
  %410 = udiv i32 %407, %409
  %411 = load i32, i32* %45, align 4
  %412 = mul i32 %410, %411
  %413 = load i32, i32* %44, align 4
  %414 = add i32 %412, %413
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %406, i64 %415
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %46, align 4
  %418 = load i32, i32* %46, align 4
  %419 = load i32*, i32** @sixel_temp_buf, align 8
  %420 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* %43, align 4
  %424 = mul i32 %422, %423
  %425 = load i32, i32* %42, align 4
  %426 = add i32 %424, %425
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %419, i64 %427
  store i32 %418, i32* %428, align 4
  br label %429

429:                                              ; preds = %390
  %430 = load i32, i32* %42, align 4
  %431 = add i32 %430, 1
  store i32 %431, i32* %42, align 4
  br label %384

432:                                              ; preds = %384
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %43, align 4
  %435 = add i32 %434, 1
  store i32 %435, i32* %43, align 4
  br label %377

436:                                              ; preds = %377
  %437 = load i32, i32* @SIXEL_PIXELFORMAT_BGRA8888, align 4
  store i32 %437, i32* %23, align 4
  %438 = load i32*, i32** @sixel_temp_buf, align 8
  %439 = bitcast i32* %438 to i8*
  store i8* %439, i8** %19, align 8
  br label %440

440:                                              ; preds = %436, %375
  %441 = load i32, i32* %24, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %481

443:                                              ; preds = %440
  %444 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %445 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = icmp ugt i32 %446, 0
  br i1 %447, label %448, label %481

448:                                              ; preds = %443
  %449 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %450 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = icmp ugt i32 %451, 0
  br i1 %452, label %453, label %481

453:                                              ; preds = %448
  %454 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %455 = load i8*, i8** %19, align 8
  %456 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @SIXEL_COLORS, align 4
  %463 = load i32, i32* %23, align 4
  %464 = call i32 @output_sixel(i8* %455, i32 %458, i32 %461, i32 %462, i32 %463)
  %465 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 4
  store i32 %464, i32* %466, align 4
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i32 0, i32 4
  %469 = load i32, i32* %468, align 4
  %470 = call i64 @SIXEL_FAILED(i32 %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %480

472:                                              ; preds = %453
  %473 = load i32, i32* @stderr, align 4
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 4
  %477 = call i8* @sixel_helper_format_error(i32 %476)
  %478 = call i8* (...) @sixel_helper_get_additional_message()
  %479 = call i32 @fprintf(i32 %473, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %477, i8* %478)
  br label %480

480:                                              ; preds = %472, %453
  br label %481

481:                                              ; preds = %480, %448, %443, %440
  %482 = load i8*, i8** %16, align 8
  %483 = icmp ne i8* %482, null
  br i1 %483, label %484, label %488

484:                                              ; preds = %481
  %485 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %486 = load i8*, i8** %16, align 8
  %487 = call i32 @font_driver_render_msg(%struct.TYPE_6__* %485, i32* null, i8* %486, i32* null)
  br label %488

488:                                              ; preds = %484, %481
  store i32 1, i32* %9, align 4
  br label %489

489:                                              ; preds = %488, %60
  %490 = load i32, i32* %9, align 4
  ret i32 %490
}

declare dso_local i32 @scroll_on_demand(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @output_sixel(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @SIXEL_FAILED(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @sixel_helper_format_error(i32) #1

declare dso_local i8* @sixel_helper_get_additional_message(...) #1

declare dso_local i32 @font_driver_render_msg(%struct.TYPE_6__*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
