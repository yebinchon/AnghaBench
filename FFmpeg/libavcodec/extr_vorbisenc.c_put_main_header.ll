; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_put_main_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_put_main_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32*, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vorbis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32**)* @put_main_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_main_header(%struct.TYPE_7__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 50000, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32* @av_mallocz(i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %480

23:                                               ; preds = %2
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @init_put_bits(i32* %7, i32* %24, i32 %25)
  %27 = call i32 @put_bits(i32* %7, i32 8, i32 1)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %41, %23
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [7 x i8], [7 x i8]* @.str, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [7 x i8], [7 x i8]* @.str, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 @put_bits(i32* %7, i32 8, i32 %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %28

44:                                               ; preds = %28
  %45 = call i32 @put_bits32(i32* %7, i32 0)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @put_bits(i32* %7, i32 8, i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @put_bits32(i32* %7, i32 %52)
  %54 = call i32 @put_bits32(i32* %7, i32 0)
  %55 = call i32 @put_bits32(i32* %7, i32 0)
  %56 = call i32 @put_bits32(i32* %7, i32 0)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @put_bits(i32* %7, i32 4, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @put_bits(i32* %7, i32 4, i32 %67)
  %69 = call i32 @put_bits(i32* %7, i32 1, i32 1)
  %70 = call i32 @flush_put_bits(i32* %7)
  %71 = call i32 @put_bits_count(i32* %7)
  %72 = ashr i32 %71, 3
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %12, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @init_put_bits(i32* %7, i32* %83, i32 %84)
  %86 = call i32 @put_bits(i32* %7, i32 8, i32 3)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %100, %44
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [7 x i8], [7 x i8]* @.str, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [7 x i8], [7 x i8]* @.str, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = call i32 @put_bits(i32* %7, i32 8, i32 %98)
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %87

103:                                              ; preds = %87
  %104 = call i32 @put_bits32(i32* %7, i32 0)
  %105 = call i32 @put_bits32(i32* %7, i32 0)
  %106 = call i32 @put_bits(i32* %7, i32 1, i32 1)
  %107 = call i32 @flush_put_bits(i32* %7)
  %108 = call i32 @put_bits_count(i32* %7)
  %109 = ashr i32 %108, 3
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %10, align 4
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %12, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @init_put_bits(i32* %7, i32* %120, i32 %121)
  %123 = call i32 @put_bits(i32* %7, i32 8, i32 5)
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %137, %103
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [7 x i8], [7 x i8]* @.str, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %124
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [7 x i8], [7 x i8]* @.str, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = call i32 @put_bits(i32* %7, i32 8, i32 %135)
  br label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %124

140:                                              ; preds = %124
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = call i32 @put_bits(i32* %7, i32 8, i32 %144)
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %160, %140
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %146
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 11
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = call i32 @put_codebook_header(i32* %7, i32* %158)
  br label %160

160:                                              ; preds = %152
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %146

163:                                              ; preds = %146
  %164 = call i32 @put_bits(i32* %7, i32 6, i32 0)
  %165 = call i32 @put_bits(i32* %7, i32 16, i32 0)
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, 1
  %170 = call i32 @put_bits(i32* %7, i32 6, i32 %169)
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %185, %163
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %171
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 10
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = call i32 @put_floor_header(i32* %7, i32* %183)
  br label %185

185:                                              ; preds = %177
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %171

188:                                              ; preds = %171
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, 1
  %193 = call i32 @put_bits(i32* %7, i32 6, i32 %192)
  store i32 0, i32* %6, align 4
  br label %194

194:                                              ; preds = %208, %188
  %195 = load i32, i32* %6, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 9
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = call i32 @put_residue_header(i32* %7, i32* %206)
  br label %208

208:                                              ; preds = %200
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %194

211:                                              ; preds = %194
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %214, 1
  %216 = call i32 @put_bits(i32* %7, i32 6, i32 %215)
  store i32 0, i32* %6, align 4
  br label %217

217:                                              ; preds = %358, %211
  %218 = load i32, i32* %6, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %361

223:                                              ; preds = %217
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i64 %228
  store %struct.TYPE_6__* %229, %struct.TYPE_6__** %13, align 8
  %230 = call i32 @put_bits(i32* %7, i32 16, i32 0)
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp sgt i32 %233, 1
  %235 = zext i1 %234 to i32
  %236 = call i32 @put_bits(i32* %7, i32 1, i32 %235)
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp sgt i32 %239, 1
  br i1 %240, label %241, label %247

241:                                              ; preds = %223
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = sub nsw i32 %244, 1
  %246 = call i32 @put_bits(i32* %7, i32 4, i32 %245)
  br label %247

247:                                              ; preds = %241, %223
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = call i32 @put_bits(i32* %7, i32 1, i32 %254)
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %303

260:                                              ; preds = %247
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %263, 1
  %265 = call i32 @put_bits(i32* %7, i32 8, i32 %264)
  store i32 0, i32* %14, align 4
  br label %266

266:                                              ; preds = %299, %260
  %267 = load i32, i32* %14, align 4
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp slt i32 %267, %270
  br i1 %271, label %272, label %302

272:                                              ; preds = %266
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %275, 1
  %277 = call i32 @ilog(i32 %276)
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %14, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @put_bits(i32* %7, i32 %277, i32 %284)
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sub nsw i32 %288, 1
  %290 = call i32 @ilog(i32 %289)
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %14, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @put_bits(i32* %7, i32 %290, i32 %297)
  br label %299

299:                                              ; preds = %272
  %300 = load i32, i32* %14, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %14, align 4
  br label %266

302:                                              ; preds = %266
  br label %303

303:                                              ; preds = %302, %247
  %304 = call i32 @put_bits(i32* %7, i32 2, i32 0)
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp sgt i32 %307, 1
  br i1 %308, label %309, label %329

309:                                              ; preds = %303
  store i32 0, i32* %14, align 4
  br label %310

310:                                              ; preds = %325, %309
  %311 = load i32, i32* %14, align 4
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp slt i32 %311, %314
  br i1 %315, label %316, label %328

316:                                              ; preds = %310
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 4
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %14, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @put_bits(i32* %7, i32 4, i32 %323)
  br label %325

325:                                              ; preds = %316
  %326 = load i32, i32* %14, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %14, align 4
  br label %310

328:                                              ; preds = %310
  br label %329

329:                                              ; preds = %328, %303
  store i32 0, i32* %14, align 4
  br label %330

330:                                              ; preds = %354, %329
  %331 = load i32, i32* %14, align 4
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %357

336:                                              ; preds = %330
  %337 = call i32 @put_bits(i32* %7, i32 8, i32 0)
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 5
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %14, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @put_bits(i32* %7, i32 8, i32 %344)
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 6
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %14, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @put_bits(i32* %7, i32 8, i32 %352)
  br label %354

354:                                              ; preds = %336
  %355 = load i32, i32* %14, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %14, align 4
  br label %330

357:                                              ; preds = %330
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %6, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %6, align 4
  br label %217

361:                                              ; preds = %217
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 6
  %364 = load i32, i32* %363, align 8
  %365 = sub nsw i32 %364, 1
  %366 = call i32 @put_bits(i32* %7, i32 6, i32 %365)
  store i32 0, i32* %6, align 4
  br label %367

367:                                              ; preds = %394, %361
  %368 = load i32, i32* %6, align 4
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 6
  %371 = load i32, i32* %370, align 8
  %372 = icmp slt i32 %368, %371
  br i1 %372, label %373, label %397

373:                                              ; preds = %367
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 7
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** %375, align 8
  %377 = load i32, i32* %6, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @put_bits(i32* %7, i32 1, i32 %381)
  %383 = call i32 @put_bits(i32* %7, i32 16, i32 0)
  %384 = call i32 @put_bits(i32* %7, i32 16, i32 0)
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 7
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %386, align 8
  %388 = load i32, i32* %6, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @put_bits(i32* %7, i32 8, i32 %392)
  br label %394

394:                                              ; preds = %373
  %395 = load i32, i32* %6, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %6, align 4
  br label %367

397:                                              ; preds = %367
  %398 = call i32 @put_bits(i32* %7, i32 1, i32 1)
  %399 = call i32 @flush_put_bits(i32* %7)
  %400 = call i32 @put_bits_count(i32* %7)
  %401 = ashr i32 %400, 3
  %402 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %401, i32* %402, align 4
  %403 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %404 = load i32, i32* %403, align 4
  %405 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %404, %406
  %408 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %409 = load i32, i32* %408, align 4
  %410 = add nsw i32 %407, %409
  store i32 %410, i32* %8, align 4
  %411 = load i32, i32* %8, align 4
  %412 = add nsw i32 64, %411
  %413 = load i32, i32* %8, align 4
  %414 = sdiv i32 %413, 255
  %415 = add nsw i32 %412, %414
  %416 = call i32* @av_mallocz(i32 %415)
  %417 = load i32**, i32*** %5, align 8
  store i32* %416, i32** %417, align 8
  store i32* %416, i32** %12, align 8
  %418 = load i32*, i32** %12, align 8
  %419 = icmp ne i32* %418, null
  br i1 %419, label %423, label %420

420:                                              ; preds = %397
  %421 = load i32, i32* @ENOMEM, align 4
  %422 = call i32 @AVERROR(i32 %421)
  store i32 %422, i32* %3, align 4
  br label %480

423:                                              ; preds = %397
  %424 = load i32*, i32** %12, align 8
  %425 = getelementptr inbounds i32, i32* %424, i32 1
  store i32* %425, i32** %12, align 8
  store i32 2, i32* %424, align 4
  %426 = load i32*, i32** %12, align 8
  %427 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @av_xiphlacing(i32* %426, i32 %428)
  %430 = load i32*, i32** %12, align 8
  %431 = sext i32 %429 to i64
  %432 = getelementptr inbounds i32, i32* %430, i64 %431
  store i32* %432, i32** %12, align 8
  %433 = load i32*, i32** %12, align 8
  %434 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @av_xiphlacing(i32* %433, i32 %435)
  %437 = load i32*, i32** %12, align 8
  %438 = sext i32 %436 to i64
  %439 = getelementptr inbounds i32, i32* %437, i64 %438
  store i32* %439, i32** %12, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %440

440:                                              ; preds = %467, %423
  %441 = load i32, i32* %6, align 4
  %442 = icmp slt i32 %441, 3
  br i1 %442, label %443, label %470

443:                                              ; preds = %440
  %444 = load i32*, i32** %12, align 8
  %445 = load i32*, i32** %11, align 8
  %446 = load i32, i32* %10, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %6, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @memcpy(i32* %444, i32* %448, i32 %452)
  %454 = load i32, i32* %6, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = load i32*, i32** %12, align 8
  %459 = sext i32 %457 to i64
  %460 = getelementptr inbounds i32, i32* %458, i64 %459
  store i32* %460, i32** %12, align 8
  %461 = load i32, i32* %6, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %10, align 4
  %466 = add nsw i32 %465, %464
  store i32 %466, i32* %10, align 4
  br label %467

467:                                              ; preds = %443
  %468 = load i32, i32* %6, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %6, align 4
  br label %440

470:                                              ; preds = %440
  %471 = call i32 @av_freep(i32** %11)
  %472 = load i32*, i32** %12, align 8
  %473 = load i32**, i32*** %5, align 8
  %474 = load i32*, i32** %473, align 8
  %475 = ptrtoint i32* %472 to i64
  %476 = ptrtoint i32* %474 to i64
  %477 = sub i64 %475, %476
  %478 = sdiv exact i64 %477, 4
  %479 = trunc i64 %478 to i32
  store i32 %479, i32* %3, align 4
  br label %480

480:                                              ; preds = %470, %420, %20
  %481 = load i32, i32* %3, align 4
  ret i32 %481
}

declare dso_local i32* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_bits32(i32*, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @put_codebook_header(i32*, i32*) #1

declare dso_local i32 @put_floor_header(i32*, i32*) #1

declare dso_local i32 @put_residue_header(i32*, i32*) #1

declare dso_local i32 @ilog(i32) #1

declare dso_local i32 @av_xiphlacing(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
