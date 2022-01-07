; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_gainc_levels.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_gainc_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }

@gain_vlc_tabs = common dso_local global %struct.TYPE_12__* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32, i32)* @decode_gainc_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_gainc_levels(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %22
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %16, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 0
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %17, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @get_bits(i32* %28, i32 2)
  switch i32 %29, label %406 [
    i32 0, label %30
    i32 1, label %69
    i32 2, label %169
    i32 3, label %317
  ]

30:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %65, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %61, %35
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %37, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %36
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @get_bits(i32* %48, i32 4)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %49, i32* %60, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %36

64:                                               ; preds = %36
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %31

68:                                               ; preds = %31
  br label %406

69:                                               ; preds = %4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %149

72:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %145, %72
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %148

77:                                               ; preds = %73
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %141, %77
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %79, %87
  br i1 %88, label %89, label %144

89:                                               ; preds = %78
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gain_vlc_tabs, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i64 5
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gain_vlc_tabs, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 5
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @get_vlc2(i32* %90, i32 %94, i32 %98, i32 1)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %100, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %89
  br label %124

111:                                              ; preds = %89
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  br label %124

124:                                              ; preds = %111, %110
  %125 = phi i32 [ 7, %110 ], [ %123, %111 ]
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %126, %127
  %129 = and i32 %128, 15
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %129, i32* %140, align 4
  br label %141

141:                                              ; preds = %124
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %78

144:                                              ; preds = %78
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %73

148:                                              ; preds = %73
  br label %168

149:                                              ; preds = %69
  store i32 0, i32* %10, align 4
  br label %150

150:                                              ; preds = %164, %149
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = load i32*, i32** %6, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  %163 = call i32 @gainc_level_mode1m(i32* %155, %struct.TYPE_9__* %156, %struct.TYPE_11__* %162)
  br label %164

164:                                              ; preds = %154
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %150

167:                                              ; preds = %150
  br label %168

168:                                              ; preds = %167, %148
  br label %406

169:                                              ; preds = %4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %221

172:                                              ; preds = %169
  store i32 0, i32* %10, align 4
  br label %173

173:                                              ; preds = %217, %172
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %220

177:                                              ; preds = %173
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %216

187:                                              ; preds = %177
  %188 = load i32*, i32** %6, align 8
  %189 = call i32 @get_bits1(i32* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load i32*, i32** %6, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i64 %198
  %200 = call i32 @gainc_level_mode1m(i32* %192, %struct.TYPE_9__* %193, %struct.TYPE_11__* %199)
  br label %215

201:                                              ; preds = %187
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i64 %206
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i64 %212
  %214 = call i32 @gainc_level_mode3s(%struct.TYPE_11__* %207, %struct.TYPE_11__* %213)
  br label %215

215:                                              ; preds = %201, %191
  br label %216

216:                                              ; preds = %215, %177
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %173

220:                                              ; preds = %173
  br label %316

221:                                              ; preds = %169
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %221
  %230 = load i32*, i32** %6, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i64 0
  %236 = call i32 @gainc_level_mode1m(i32* %230, %struct.TYPE_9__* %231, %struct.TYPE_11__* %235)
  br label %237

237:                                              ; preds = %229, %221
  store i32 1, i32* %10, align 4
  br label %238

238:                                              ; preds = %312, %237
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %9, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %315

242:                                              ; preds = %238
  store i32 0, i32* %11, align 4
  br label %243

243:                                              ; preds = %308, %242
  %244 = load i32, i32* %11, align 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp slt i32 %244, %252
  br i1 %253, label %254, label %311

254:                                              ; preds = %243
  %255 = load i32*, i32** %6, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gain_vlc_tabs, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i64 4
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gain_vlc_tabs, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i64 4
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @get_vlc2(i32* %255, i32 %259, i32 %263, i32 1)
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %11, align 4
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %267, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp sge i32 %265, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %254
  br label %291

277:                                              ; preds = %254
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = sub nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  br label %291

291:                                              ; preds = %277, %276
  %292 = phi i32 [ 7, %276 ], [ %290, %277 ]
  store i32 %292, i32* %15, align 4
  %293 = load i32, i32* %15, align 4
  %294 = load i32, i32* %12, align 4
  %295 = add nsw i32 %293, %294
  %296 = and i32 %295, 15
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %298, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  store i32 %296, i32* %307, align 4
  br label %308

308:                                              ; preds = %291
  %309 = load i32, i32* %11, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %11, align 4
  br label %243

311:                                              ; preds = %243
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %10, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %10, align 4
  br label %238

315:                                              ; preds = %238
  br label %316

316:                                              ; preds = %315, %220
  br label %406

317:                                              ; preds = %4
  %318 = load i32, i32* %8, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %343

320:                                              ; preds = %317
  store i32 0, i32* %10, align 4
  br label %321

321:                                              ; preds = %339, %320
  %322 = load i32, i32* %10, align 4
  %323 = load i32, i32* %9, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %342

325:                                              ; preds = %321
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %327, align 8
  %329 = load i32, i32* %10, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i64 %330
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %333, align 8
  %335 = load i32, i32* %10, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i64 %336
  %338 = call i32 @gainc_level_mode3s(%struct.TYPE_11__* %331, %struct.TYPE_11__* %337)
  br label %339

339:                                              ; preds = %325
  %340 = load i32, i32* %10, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %10, align 4
  br label %321

342:                                              ; preds = %321
  br label %405

343:                                              ; preds = %317
  %344 = load i32*, i32** %6, align 8
  %345 = call i32 @get_bits(i32* %344, i32 2)
  store i32 %345, i32* %13, align 4
  %346 = load i32*, i32** %6, align 8
  %347 = call i32 @get_bits(i32* %346, i32 4)
  store i32 %347, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %348

348:                                              ; preds = %401, %343
  %349 = load i32, i32* %10, align 4
  %350 = load i32, i32* %9, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %404

352:                                              ; preds = %348
  store i32 0, i32* %11, align 4
  br label %353

353:                                              ; preds = %397, %352
  %354 = load i32, i32* %11, align 4
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %356, align 8
  %358 = load i32, i32* %10, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = icmp slt i32 %354, %362
  br i1 %363, label %364, label %400

364:                                              ; preds = %353
  %365 = load i32, i32* %14, align 4
  %366 = load i32*, i32** %6, align 8
  %367 = load i32, i32* %13, align 4
  %368 = call i32 @get_bitsz(i32* %366, i32 %367)
  %369 = add nsw i32 %365, %368
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %371, align 8
  %373 = load i32, i32* %10, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %11, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  store i32 %369, i32* %380, align 4
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %382, align 8
  %384 = load i32, i32* %10, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %11, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = icmp sgt i32 %392, 15
  br i1 %393, label %394, label %396

394:                                              ; preds = %364
  %395 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %395, i32* %5, align 4
  br label %407

396:                                              ; preds = %364
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %11, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %11, align 4
  br label %353

400:                                              ; preds = %353
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %10, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %10, align 4
  br label %348

404:                                              ; preds = %348
  br label %405

405:                                              ; preds = %404, %342
  br label %406

406:                                              ; preds = %4, %405, %316, %168, %68
  store i32 0, i32* %5, align 4
  br label %407

407:                                              ; preds = %406, %394
  %408 = load i32, i32* %5, align 4
  ret i32 %408
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @gainc_level_mode1m(i32*, %struct.TYPE_9__*, %struct.TYPE_11__*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @gainc_level_mode3s(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @get_bitsz(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
