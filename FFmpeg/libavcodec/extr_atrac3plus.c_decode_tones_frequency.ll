; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_tones_frequency.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_tones_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }

@tone_vlc_tabs = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, i32, i32*)* @decode_tones_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_tones_frequency(i32* %0, %struct.TYPE_12__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %17, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %18, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @get_bits1(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %210, label %39

39:                                               ; preds = %35, %4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %206, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %209

48:                                               ; preds = %40
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55, %48
  br label %206

64:                                               ; preds = %55
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %75
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %15, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %64
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @get_bits1(i32* %85)
  br label %88

87:                                               ; preds = %64
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 0, %87 ]
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %147

92:                                               ; preds = %88
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %92
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @get_bits(i32* %101, i32 10)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 %102, i32* %113, align 4
  br label %114

114:                                              ; preds = %100, %92
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 2
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %143, %114
  %123 = load i32, i32* %10, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %146

125:                                              ; preds = %122
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @av_log2(i32 %132)
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @get_bits(i32* %135, i32 %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i32 %137, i32* %142, align 4
  br label %143

143:                                              ; preds = %125
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %10, align 4
  br label %122

146:                                              ; preds = %122
  br label %205

147:                                              ; preds = %88
  store i32 0, i32* %10, align 4
  br label %148

148:                                              ; preds = %201, %147
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %149, %155
  br i1 %156, label %157, label %204

157:                                              ; preds = %148
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %167, 512
  br i1 %168, label %169, label %177

169:                                              ; preds = %160, %157
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @get_bits(i32* %170, i32 10)
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  store i32 %171, i32* %176, align 4
  br label %200

177:                                              ; preds = %160
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 1023, %184
  %186 = call i32 @av_log2(i32 %185)
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %12, align 4
  %188 = load i32*, i32** %5, align 8
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @get_bits(i32* %188, i32 %189)
  %191 = add nsw i32 %190, 1024
  %192 = load i32, i32* %12, align 4
  %193 = shl i32 1, %192
  %194 = sub nsw i32 %191, %193
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  store i32 %194, i32* %199, align 4
  br label %200

200:                                              ; preds = %177, %169
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %148

204:                                              ; preds = %148
  br label %205

205:                                              ; preds = %204, %146
  br label %206

206:                                              ; preds = %205, %63
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %40

209:                                              ; preds = %40
  br label %340

210:                                              ; preds = %35
  store i32 0, i32* %9, align 4
  br label %211

211:                                              ; preds = %336, %210
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %212, %217
  br i1 %218, label %219, label %339

219:                                              ; preds = %211
  %220 = load i32*, i32** %8, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %219
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %226, %219
  br label %336

235:                                              ; preds = %226
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i64 %246
  store %struct.TYPE_11__* %247, %struct.TYPE_11__** %15, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i64 %258
  store %struct.TYPE_11__* %259, %struct.TYPE_11__** %16, align 8
  store i32 0, i32* %10, align 4
  br label %260

260:                                              ; preds = %332, %235
  %261 = load i32, i32* %10, align 4
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %261, %267
  br i1 %268, label %269, label %335

269:                                              ; preds = %260
  %270 = load i32*, i32** %5, align 8
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tone_vlc_tabs, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i64 6
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tone_vlc_tabs, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i64 6
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @get_vlc2(i32* %270, i32 %274, i32 %278, i32 1)
  store i32 %279, i32* %14, align 4
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @sign_extend(i32 %280, i32 8)
  store i32 %281, i32* %14, align 4
  %282 = load i32, i32* %10, align 4
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %282, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %269
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  br label %321

297:                                              ; preds = %269
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %318

305:                                              ; preds = %297
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = sub nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  br label %319

318:                                              ; preds = %297
  br label %319

319:                                              ; preds = %318, %305
  %320 = phi i32 [ %317, %305 ], [ 0, %318 ]
  br label %321

321:                                              ; preds = %319, %290
  %322 = phi i32 [ %296, %290 ], [ %320, %319 ]
  store i32 %322, i32* %13, align 4
  %323 = load i32, i32* %13, align 4
  %324 = load i32, i32* %14, align 4
  %325 = add nsw i32 %323, %324
  %326 = and i32 %325, 1023
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  store i32 %326, i32* %331, align 4
  br label %332

332:                                              ; preds = %321
  %333 = load i32, i32* %10, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %10, align 4
  br label %260

335:                                              ; preds = %260
  br label %336

336:                                              ; preds = %335, %234
  %337 = load i32, i32* %9, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %9, align 4
  br label %211

339:                                              ; preds = %211
  br label %340

340:                                              ; preds = %339, %209
  ret void
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
