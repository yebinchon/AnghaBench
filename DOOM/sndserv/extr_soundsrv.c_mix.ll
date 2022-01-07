; ModuleID = '/home/carl/AnghaBench/DOOM/sndserv/extr_soundsrv.c_mix.c'
source_filename = "/home/carl/AnghaBench/DOOM/sndserv/extr_soundsrv.c_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mixbuffer = common dso_local global i16* null, align 8
@SAMPLECOUNT = common dso_local global i32 0, align 4
@channels = common dso_local global i32** null, align 8
@channelleftvol_lookup = common dso_local global i64** null, align 8
@channelrightvol_lookup = common dso_local global i64** null, align 8
@channelstep = common dso_local global i64* null, align 8
@channelstepremainder = common dso_local global i32* null, align 8
@channelsend = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mix() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = load i16*, i16** @mixbuffer, align 8
  store i16* %8, i16** %4, align 8
  %9 = load i16*, i16** @mixbuffer, align 8
  %10 = getelementptr inbounds i16, i16* %9, i64 1
  store i16* %10, i16** %5, align 8
  store i32 2, i32* %7, align 4
  %11 = load i16*, i16** @mixbuffer, align 8
  %12 = load i32, i32* @SAMPLECOUNT, align 4
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %11, i64 %15
  store i16* %16, i16** %6, align 8
  br label %17

17:                                               ; preds = %571, %0
  %18 = load i16*, i16** %4, align 8
  %19 = load i16*, i16** %6, align 8
  %20 = icmp ne i16* %18, %19
  br i1 %20, label %21, label %580

21:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %22 = load i32**, i32*** @channels, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %86

26:                                               ; preds = %21
  %27 = load i32**, i32*** @channels, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  %31 = load i64**, i64*** @channelleftvol_lookup, align 8
  %32 = getelementptr inbounds i64*, i64** %31, i64 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %1, align 4
  %42 = load i64**, i64*** @channelrightvol_lookup, align 8
  %43 = getelementptr inbounds i64*, i64** %42, i64 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %2, align 4
  %53 = load i64*, i64** @channelstep, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32*, i32** @channelstepremainder, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load i32*, i32** @channelstepremainder, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 16
  %66 = load i32**, i32*** @channels, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 0
  %68 = load i32*, i32** %67, align 8
  %69 = sext i32 %65 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %67, align 8
  %71 = load i32*, i32** @channelstepremainder, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 65535
  store i32 %74, i32* %72, align 4
  %75 = load i32**, i32*** @channels, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32**, i32*** @channelsend, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp uge i32* %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %26
  %83 = load i32**, i32*** @channels, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %82, %26
  br label %86

86:                                               ; preds = %85, %21
  %87 = load i32**, i32*** @channels, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %151

91:                                               ; preds = %86
  %92 = load i32**, i32*** @channels, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %3, align 4
  %96 = load i64**, i64*** @channelleftvol_lookup, align 8
  %97 = getelementptr inbounds i64*, i64** %96, i64 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %1, align 4
  %107 = load i64**, i64*** @channelrightvol_lookup, align 8
  %108 = getelementptr inbounds i64*, i64** %107, i64 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %2, align 4
  %118 = load i64*, i64** @channelstep, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32*, i32** @channelstepremainder, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load i32*, i32** @channelstepremainder, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 16
  %131 = load i32**, i32*** @channels, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = sext i32 %130 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %132, align 8
  %136 = load i32*, i32** @channelstepremainder, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 65535
  store i32 %139, i32* %137, align 4
  %140 = load i32**, i32*** @channels, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32**, i32*** @channelsend, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 1
  %145 = load i32*, i32** %144, align 8
  %146 = icmp uge i32* %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %91
  %148 = load i32**, i32*** @channels, align 8
  %149 = getelementptr inbounds i32*, i32** %148, i64 1
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %147, %91
  br label %151

151:                                              ; preds = %150, %86
  %152 = load i32**, i32*** @channels, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %216

156:                                              ; preds = %151
  %157 = load i32**, i32*** @channels, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %3, align 4
  %161 = load i64**, i64*** @channelleftvol_lookup, align 8
  %162 = getelementptr inbounds i64*, i64** %161, i64 2
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %1, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %1, align 4
  %172 = load i64**, i64*** @channelrightvol_lookup, align 8
  %173 = getelementptr inbounds i64*, i64** %172, i64 2
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %3, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %2, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %2, align 4
  %183 = load i64*, i64** @channelstep, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 2
  %185 = load i64, i64* %184, align 8
  %186 = load i32*, i32** @channelstepremainder, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %185
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %187, align 4
  %192 = load i32*, i32** @channelstepremainder, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 16
  %196 = load i32**, i32*** @channels, align 8
  %197 = getelementptr inbounds i32*, i32** %196, i64 2
  %198 = load i32*, i32** %197, align 8
  %199 = sext i32 %195 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %197, align 8
  %201 = load i32*, i32** @channelstepremainder, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 65535
  store i32 %204, i32* %202, align 4
  %205 = load i32**, i32*** @channels, align 8
  %206 = getelementptr inbounds i32*, i32** %205, i64 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i32**, i32*** @channelsend, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 2
  %210 = load i32*, i32** %209, align 8
  %211 = icmp uge i32* %207, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %156
  %213 = load i32**, i32*** @channels, align 8
  %214 = getelementptr inbounds i32*, i32** %213, i64 2
  store i32* null, i32** %214, align 8
  br label %215

215:                                              ; preds = %212, %156
  br label %216

216:                                              ; preds = %215, %151
  %217 = load i32**, i32*** @channels, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 3
  %219 = load i32*, i32** %218, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %281

221:                                              ; preds = %216
  %222 = load i32**, i32*** @channels, align 8
  %223 = getelementptr inbounds i32*, i32** %222, i64 3
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %3, align 4
  %226 = load i64**, i64*** @channelleftvol_lookup, align 8
  %227 = getelementptr inbounds i64*, i64** %226, i64 3
  %228 = load i64*, i64** %227, align 8
  %229 = load i32, i32* %3, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %1, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %1, align 4
  %237 = load i64**, i64*** @channelrightvol_lookup, align 8
  %238 = getelementptr inbounds i64*, i64** %237, i64 3
  %239 = load i64*, i64** %238, align 8
  %240 = load i32, i32* %3, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* %2, align 4
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %245, %243
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %2, align 4
  %248 = load i64*, i64** @channelstep, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 3
  %250 = load i64, i64* %249, align 8
  %251 = load i32*, i32** @channelstepremainder, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 3
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %250
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %252, align 4
  %257 = load i32*, i32** @channelstepremainder, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 3
  %259 = load i32, i32* %258, align 4
  %260 = ashr i32 %259, 16
  %261 = load i32**, i32*** @channels, align 8
  %262 = getelementptr inbounds i32*, i32** %261, i64 3
  %263 = load i32*, i32** %262, align 8
  %264 = sext i32 %260 to i64
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  store i32* %265, i32** %262, align 8
  %266 = load i32*, i32** @channelstepremainder, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 3
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 65535
  store i32 %269, i32* %267, align 4
  %270 = load i32**, i32*** @channels, align 8
  %271 = getelementptr inbounds i32*, i32** %270, i64 3
  %272 = load i32*, i32** %271, align 8
  %273 = load i32**, i32*** @channelsend, align 8
  %274 = getelementptr inbounds i32*, i32** %273, i64 3
  %275 = load i32*, i32** %274, align 8
  %276 = icmp uge i32* %272, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %221
  %278 = load i32**, i32*** @channels, align 8
  %279 = getelementptr inbounds i32*, i32** %278, i64 3
  store i32* null, i32** %279, align 8
  br label %280

280:                                              ; preds = %277, %221
  br label %281

281:                                              ; preds = %280, %216
  %282 = load i32**, i32*** @channels, align 8
  %283 = getelementptr inbounds i32*, i32** %282, i64 4
  %284 = load i32*, i32** %283, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %346

286:                                              ; preds = %281
  %287 = load i32**, i32*** @channels, align 8
  %288 = getelementptr inbounds i32*, i32** %287, i64 4
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %3, align 4
  %291 = load i64**, i64*** @channelleftvol_lookup, align 8
  %292 = getelementptr inbounds i64*, i64** %291, i64 4
  %293 = load i64*, i64** %292, align 8
  %294 = load i32, i32* %3, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %293, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = load i32, i32* %1, align 4
  %299 = sext i32 %298 to i64
  %300 = add nsw i64 %299, %297
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %1, align 4
  %302 = load i64**, i64*** @channelrightvol_lookup, align 8
  %303 = getelementptr inbounds i64*, i64** %302, i64 4
  %304 = load i64*, i64** %303, align 8
  %305 = load i32, i32* %3, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = load i32, i32* %2, align 4
  %310 = sext i32 %309 to i64
  %311 = add nsw i64 %310, %308
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %2, align 4
  %313 = load i64*, i64** @channelstep, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 4
  %315 = load i64, i64* %314, align 8
  %316 = load i32*, i32** @channelstepremainder, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 4
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = add nsw i64 %319, %315
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %317, align 4
  %322 = load i32*, i32** @channelstepremainder, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 4
  %324 = load i32, i32* %323, align 4
  %325 = ashr i32 %324, 16
  %326 = load i32**, i32*** @channels, align 8
  %327 = getelementptr inbounds i32*, i32** %326, i64 4
  %328 = load i32*, i32** %327, align 8
  %329 = sext i32 %325 to i64
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32* %330, i32** %327, align 8
  %331 = load i32*, i32** @channelstepremainder, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 4
  %333 = load i32, i32* %332, align 4
  %334 = and i32 %333, 65535
  store i32 %334, i32* %332, align 4
  %335 = load i32**, i32*** @channels, align 8
  %336 = getelementptr inbounds i32*, i32** %335, i64 4
  %337 = load i32*, i32** %336, align 8
  %338 = load i32**, i32*** @channelsend, align 8
  %339 = getelementptr inbounds i32*, i32** %338, i64 4
  %340 = load i32*, i32** %339, align 8
  %341 = icmp uge i32* %337, %340
  br i1 %341, label %342, label %345

342:                                              ; preds = %286
  %343 = load i32**, i32*** @channels, align 8
  %344 = getelementptr inbounds i32*, i32** %343, i64 4
  store i32* null, i32** %344, align 8
  br label %345

345:                                              ; preds = %342, %286
  br label %346

346:                                              ; preds = %345, %281
  %347 = load i32**, i32*** @channels, align 8
  %348 = getelementptr inbounds i32*, i32** %347, i64 5
  %349 = load i32*, i32** %348, align 8
  %350 = icmp ne i32* %349, null
  br i1 %350, label %351, label %411

351:                                              ; preds = %346
  %352 = load i32**, i32*** @channels, align 8
  %353 = getelementptr inbounds i32*, i32** %352, i64 5
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %3, align 4
  %356 = load i64**, i64*** @channelleftvol_lookup, align 8
  %357 = getelementptr inbounds i64*, i64** %356, i64 5
  %358 = load i64*, i64** %357, align 8
  %359 = load i32, i32* %3, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i64, i64* %358, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = load i32, i32* %1, align 4
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %364, %362
  %366 = trunc i64 %365 to i32
  store i32 %366, i32* %1, align 4
  %367 = load i64**, i64*** @channelrightvol_lookup, align 8
  %368 = getelementptr inbounds i64*, i64** %367, i64 5
  %369 = load i64*, i64** %368, align 8
  %370 = load i32, i32* %3, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds i64, i64* %369, i64 %371
  %373 = load i64, i64* %372, align 8
  %374 = load i32, i32* %2, align 4
  %375 = sext i32 %374 to i64
  %376 = add nsw i64 %375, %373
  %377 = trunc i64 %376 to i32
  store i32 %377, i32* %2, align 4
  %378 = load i64*, i64** @channelstep, align 8
  %379 = getelementptr inbounds i64, i64* %378, i64 5
  %380 = load i64, i64* %379, align 8
  %381 = load i32*, i32** @channelstepremainder, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 5
  %383 = load i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %384, %380
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %382, align 4
  %387 = load i32*, i32** @channelstepremainder, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 5
  %389 = load i32, i32* %388, align 4
  %390 = ashr i32 %389, 16
  %391 = load i32**, i32*** @channels, align 8
  %392 = getelementptr inbounds i32*, i32** %391, i64 5
  %393 = load i32*, i32** %392, align 8
  %394 = sext i32 %390 to i64
  %395 = getelementptr inbounds i32, i32* %393, i64 %394
  store i32* %395, i32** %392, align 8
  %396 = load i32*, i32** @channelstepremainder, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 5
  %398 = load i32, i32* %397, align 4
  %399 = and i32 %398, 65535
  store i32 %399, i32* %397, align 4
  %400 = load i32**, i32*** @channels, align 8
  %401 = getelementptr inbounds i32*, i32** %400, i64 5
  %402 = load i32*, i32** %401, align 8
  %403 = load i32**, i32*** @channelsend, align 8
  %404 = getelementptr inbounds i32*, i32** %403, i64 5
  %405 = load i32*, i32** %404, align 8
  %406 = icmp uge i32* %402, %405
  br i1 %406, label %407, label %410

407:                                              ; preds = %351
  %408 = load i32**, i32*** @channels, align 8
  %409 = getelementptr inbounds i32*, i32** %408, i64 5
  store i32* null, i32** %409, align 8
  br label %410

410:                                              ; preds = %407, %351
  br label %411

411:                                              ; preds = %410, %346
  %412 = load i32**, i32*** @channels, align 8
  %413 = getelementptr inbounds i32*, i32** %412, i64 6
  %414 = load i32*, i32** %413, align 8
  %415 = icmp ne i32* %414, null
  br i1 %415, label %416, label %476

416:                                              ; preds = %411
  %417 = load i32**, i32*** @channels, align 8
  %418 = getelementptr inbounds i32*, i32** %417, i64 6
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %419, align 4
  store i32 %420, i32* %3, align 4
  %421 = load i64**, i64*** @channelleftvol_lookup, align 8
  %422 = getelementptr inbounds i64*, i64** %421, i64 6
  %423 = load i64*, i64** %422, align 8
  %424 = load i32, i32* %3, align 4
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds i64, i64* %423, i64 %425
  %427 = load i64, i64* %426, align 8
  %428 = load i32, i32* %1, align 4
  %429 = sext i32 %428 to i64
  %430 = add nsw i64 %429, %427
  %431 = trunc i64 %430 to i32
  store i32 %431, i32* %1, align 4
  %432 = load i64**, i64*** @channelrightvol_lookup, align 8
  %433 = getelementptr inbounds i64*, i64** %432, i64 6
  %434 = load i64*, i64** %433, align 8
  %435 = load i32, i32* %3, align 4
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds i64, i64* %434, i64 %436
  %438 = load i64, i64* %437, align 8
  %439 = load i32, i32* %2, align 4
  %440 = sext i32 %439 to i64
  %441 = add nsw i64 %440, %438
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* %2, align 4
  %443 = load i64*, i64** @channelstep, align 8
  %444 = getelementptr inbounds i64, i64* %443, i64 6
  %445 = load i64, i64* %444, align 8
  %446 = load i32*, i32** @channelstepremainder, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 6
  %448 = load i32, i32* %447, align 4
  %449 = sext i32 %448 to i64
  %450 = add nsw i64 %449, %445
  %451 = trunc i64 %450 to i32
  store i32 %451, i32* %447, align 4
  %452 = load i32*, i32** @channelstepremainder, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 6
  %454 = load i32, i32* %453, align 4
  %455 = ashr i32 %454, 16
  %456 = load i32**, i32*** @channels, align 8
  %457 = getelementptr inbounds i32*, i32** %456, i64 6
  %458 = load i32*, i32** %457, align 8
  %459 = sext i32 %455 to i64
  %460 = getelementptr inbounds i32, i32* %458, i64 %459
  store i32* %460, i32** %457, align 8
  %461 = load i32*, i32** @channelstepremainder, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 6
  %463 = load i32, i32* %462, align 4
  %464 = and i32 %463, 65535
  store i32 %464, i32* %462, align 4
  %465 = load i32**, i32*** @channels, align 8
  %466 = getelementptr inbounds i32*, i32** %465, i64 6
  %467 = load i32*, i32** %466, align 8
  %468 = load i32**, i32*** @channelsend, align 8
  %469 = getelementptr inbounds i32*, i32** %468, i64 6
  %470 = load i32*, i32** %469, align 8
  %471 = icmp uge i32* %467, %470
  br i1 %471, label %472, label %475

472:                                              ; preds = %416
  %473 = load i32**, i32*** @channels, align 8
  %474 = getelementptr inbounds i32*, i32** %473, i64 6
  store i32* null, i32** %474, align 8
  br label %475

475:                                              ; preds = %472, %416
  br label %476

476:                                              ; preds = %475, %411
  %477 = load i32**, i32*** @channels, align 8
  %478 = getelementptr inbounds i32*, i32** %477, i64 7
  %479 = load i32*, i32** %478, align 8
  %480 = icmp ne i32* %479, null
  br i1 %480, label %481, label %541

481:                                              ; preds = %476
  %482 = load i32**, i32*** @channels, align 8
  %483 = getelementptr inbounds i32*, i32** %482, i64 7
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %484, align 4
  store i32 %485, i32* %3, align 4
  %486 = load i64**, i64*** @channelleftvol_lookup, align 8
  %487 = getelementptr inbounds i64*, i64** %486, i64 7
  %488 = load i64*, i64** %487, align 8
  %489 = load i32, i32* %3, align 4
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds i64, i64* %488, i64 %490
  %492 = load i64, i64* %491, align 8
  %493 = load i32, i32* %1, align 4
  %494 = sext i32 %493 to i64
  %495 = add nsw i64 %494, %492
  %496 = trunc i64 %495 to i32
  store i32 %496, i32* %1, align 4
  %497 = load i64**, i64*** @channelrightvol_lookup, align 8
  %498 = getelementptr inbounds i64*, i64** %497, i64 7
  %499 = load i64*, i64** %498, align 8
  %500 = load i32, i32* %3, align 4
  %501 = zext i32 %500 to i64
  %502 = getelementptr inbounds i64, i64* %499, i64 %501
  %503 = load i64, i64* %502, align 8
  %504 = load i32, i32* %2, align 4
  %505 = sext i32 %504 to i64
  %506 = add nsw i64 %505, %503
  %507 = trunc i64 %506 to i32
  store i32 %507, i32* %2, align 4
  %508 = load i64*, i64** @channelstep, align 8
  %509 = getelementptr inbounds i64, i64* %508, i64 7
  %510 = load i64, i64* %509, align 8
  %511 = load i32*, i32** @channelstepremainder, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 7
  %513 = load i32, i32* %512, align 4
  %514 = sext i32 %513 to i64
  %515 = add nsw i64 %514, %510
  %516 = trunc i64 %515 to i32
  store i32 %516, i32* %512, align 4
  %517 = load i32*, i32** @channelstepremainder, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 7
  %519 = load i32, i32* %518, align 4
  %520 = ashr i32 %519, 16
  %521 = load i32**, i32*** @channels, align 8
  %522 = getelementptr inbounds i32*, i32** %521, i64 7
  %523 = load i32*, i32** %522, align 8
  %524 = sext i32 %520 to i64
  %525 = getelementptr inbounds i32, i32* %523, i64 %524
  store i32* %525, i32** %522, align 8
  %526 = load i32*, i32** @channelstepremainder, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 7
  %528 = load i32, i32* %527, align 4
  %529 = and i32 %528, 65535
  store i32 %529, i32* %527, align 4
  %530 = load i32**, i32*** @channels, align 8
  %531 = getelementptr inbounds i32*, i32** %530, i64 7
  %532 = load i32*, i32** %531, align 8
  %533 = load i32**, i32*** @channelsend, align 8
  %534 = getelementptr inbounds i32*, i32** %533, i64 7
  %535 = load i32*, i32** %534, align 8
  %536 = icmp uge i32* %532, %535
  br i1 %536, label %537, label %540

537:                                              ; preds = %481
  %538 = load i32**, i32*** @channels, align 8
  %539 = getelementptr inbounds i32*, i32** %538, i64 7
  store i32* null, i32** %539, align 8
  br label %540

540:                                              ; preds = %537, %481
  br label %541

541:                                              ; preds = %540, %476
  %542 = load i32, i32* %1, align 4
  %543 = icmp sgt i32 %542, 32767
  br i1 %543, label %544, label %546

544:                                              ; preds = %541
  %545 = load i16*, i16** %4, align 8
  store i16 32767, i16* %545, align 2
  br label %556

546:                                              ; preds = %541
  %547 = load i32, i32* %1, align 4
  %548 = icmp slt i32 %547, -32768
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  %550 = load i16*, i16** %4, align 8
  store i16 -32768, i16* %550, align 2
  br label %555

551:                                              ; preds = %546
  %552 = load i32, i32* %1, align 4
  %553 = trunc i32 %552 to i16
  %554 = load i16*, i16** %4, align 8
  store i16 %553, i16* %554, align 2
  br label %555

555:                                              ; preds = %551, %549
  br label %556

556:                                              ; preds = %555, %544
  %557 = load i32, i32* %2, align 4
  %558 = icmp sgt i32 %557, 32767
  br i1 %558, label %559, label %561

559:                                              ; preds = %556
  %560 = load i16*, i16** %5, align 8
  store i16 32767, i16* %560, align 2
  br label %571

561:                                              ; preds = %556
  %562 = load i32, i32* %2, align 4
  %563 = icmp slt i32 %562, -32768
  br i1 %563, label %564, label %566

564:                                              ; preds = %561
  %565 = load i16*, i16** %5, align 8
  store i16 -32768, i16* %565, align 2
  br label %570

566:                                              ; preds = %561
  %567 = load i32, i32* %2, align 4
  %568 = trunc i32 %567 to i16
  %569 = load i16*, i16** %5, align 8
  store i16 %568, i16* %569, align 2
  br label %570

570:                                              ; preds = %566, %564
  br label %571

571:                                              ; preds = %570, %559
  %572 = load i32, i32* %7, align 4
  %573 = load i16*, i16** %4, align 8
  %574 = sext i32 %572 to i64
  %575 = getelementptr inbounds i16, i16* %573, i64 %574
  store i16* %575, i16** %4, align 8
  %576 = load i32, i32* %7, align 4
  %577 = load i16*, i16** %5, align 8
  %578 = sext i32 %576 to i64
  %579 = getelementptr inbounds i16, i16* %577, i64 %578
  store i16* %579, i16** %5, align 8
  br label %17

580:                                              ; preds = %17
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
