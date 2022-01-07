; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_channel_sf_idx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_channel_sf_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

@sf_vlc_tabs = common dso_local global %struct.TYPE_8__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SF mode 1: invalid parameters!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32, i32*)* @decode_channel_sf_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_channel_sf_idx(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %26
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %20, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 0
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %21, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @get_bits(i32* %32, i32 2)
  switch i32 %33, label %531 [
    i32 0, label %34
    i32 1, label %54
    i32 2, label %242
    i32 3, label %377
  ]

34:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @get_bits(i32* %42, i32 6)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %35

53:                                               ; preds = %35
  br label %531

54:                                               ; preds = %4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sf_vlc_tabs, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @get_bits(i32* %59, i32 2)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %61
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %19, align 8
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %94, %57
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @get_vlc2(i32* %70, i32 %73, i32 %76, i32 1)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %84, %85
  %87 = and i32 %86, 63
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %69
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %63

97:                                               ; preds = %63
  br label %241

98:                                               ; preds = %54
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @get_bits(i32* %99, i32 2)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %178

103:                                              ; preds = %98
  %104 = load i32*, i32** %6, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @UNPACK_SF_VQ_SHAPE(i32* %104, i32* %107, i32 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @get_bits(i32* %112, i32 5)
  store i32 %113, i32* %14, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @get_bits(i32* %114, i32 2)
  store i32 %115, i32* %15, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @get_bits(i32* %116, i32 4)
  %118 = sub nsw i32 %117, 7
  store i32 %118, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %142, %103
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %145

123:                                              ; preds = %119
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @get_bits(i32* %131, i32 4)
  %133 = add nsw i32 %130, %132
  %134 = sub nsw i32 %133, 7
  %135 = and i32 %134, 63
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  br label %142

142:                                              ; preds = %123
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %119

145:                                              ; preds = %119
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %174, %145
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %147
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @get_bitsz(i32* %163, i32 %164)
  %166 = add nsw i32 %162, %165
  %167 = and i32 %166, 63
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %167, i32* %173, align 4
  br label %174

174:                                              ; preds = %153
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %147

177:                                              ; preds = %147
  br label %240

178:                                              ; preds = %98
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @get_bits(i32* %179, i32 5)
  store i32 %180, i32* %14, align 4
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 @get_bits(i32* %181, i32 3)
  store i32 %182, i32* %15, align 4
  %183 = load i32*, i32** %6, align 8
  %184 = call i32 @get_bits(i32* %183, i32 6)
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sgt i32 %185, %188
  br i1 %189, label %193, label %190

190:                                              ; preds = %178
  %191 = load i32, i32* %15, align 4
  %192 = icmp eq i32 %191, 7
  br i1 %192, label %193, label %198

193:                                              ; preds = %190, %178
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* @AV_LOG_ERROR, align 4
  %196 = call i32 @av_log(i32* %194, i32 %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %197 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %197, i32* %5, align 4
  br label %544

198:                                              ; preds = %190
  store i32 0, i32* %10, align 4
  br label %199

199:                                              ; preds = %212, %198
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %14, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load i32*, i32** %6, align 8
  %205 = call i32 @get_bits(i32* %204, i32 6)
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %205, i32* %211, align 4
  br label %212

212:                                              ; preds = %203
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %199

215:                                              ; preds = %199
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %10, align 4
  br label %217

217:                                              ; preds = %236, %215
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %239

223:                                              ; preds = %217
  %224 = load i32, i32* %16, align 4
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %15, align 4
  %227 = call i32 @get_bitsz(i32* %225, i32 %226)
  %228 = add nsw i32 %224, %227
  %229 = and i32 %228, 63
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %229, i32* %235, align 4
  br label %236

236:                                              ; preds = %223
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %217

239:                                              ; preds = %217
  br label %240

240:                                              ; preds = %239, %177
  br label %241

241:                                              ; preds = %240, %97
  br label %531

242:                                              ; preds = %4
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %325

245:                                              ; preds = %242
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sf_vlc_tabs, align 8
  %247 = load i32*, i32** %6, align 8
  %248 = call i32 @get_bits(i32* %247, i32 2)
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i64 %249
  store %struct.TYPE_8__* %250, %struct.TYPE_8__** %19, align 8
  %251 = load i32*, i32** %6, align 8
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @get_vlc2(i32* %251, i32 %254, i32 %257, i32 1)
  store i32 %258, i32* %12, align 4
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %263, %264
  %266 = and i32 %265, 63
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  store i32 %266, i32* %270, align 4
  store i32 1, i32* %10, align 4
  br label %271

271:                                              ; preds = %321, %245
  %272 = load i32, i32* %10, align 4
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp slt i32 %272, %275
  br i1 %276, label %277, label %324

277:                                              ; preds = %271
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sub nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = sub nsw i32 %284, %292
  store i32 %293, i32* %13, align 4
  %294 = load i32*, i32** %6, align 8
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @get_vlc2(i32* %294, i32 %297, i32 %300, i32 1)
  store i32 %301, i32* %12, align 4
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %10, align 4
  %306 = sub nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %13, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %311, %312
  %314 = and i32 %313, 63
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %10, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  store i32 %314, i32* %320, align 4
  br label %321

321:                                              ; preds = %277
  %322 = load i32, i32* %10, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %10, align 4
  br label %271

324:                                              ; preds = %271
  br label %376

325:                                              ; preds = %242
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sf_vlc_tabs, align 8
  %327 = load i32*, i32** %6, align 8
  %328 = call i32 @get_bits(i32* %327, i32 2)
  %329 = add nsw i32 %328, 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i64 %330
  store %struct.TYPE_8__* %331, %struct.TYPE_8__** %19, align 8
  %332 = load i32*, i32** %6, align 8
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @UNPACK_SF_VQ_SHAPE(i32* %332, i32* %335, i32 %338)
  store i32 0, i32* %10, align 4
  br label %340

340:                                              ; preds = %372, %325
  %341 = load i32, i32* %10, align 4
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp slt i32 %341, %344
  br i1 %345, label %346, label %375

346:                                              ; preds = %340
  %347 = load i32*, i32** %6, align 8
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @get_vlc2(i32* %347, i32 %350, i32 %353, i32 1)
  store i32 %354, i32* %12, align 4
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* %10, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %12, align 4
  %363 = call i32 @sign_extend(i32 %362, i32 4)
  %364 = add nsw i32 %361, %363
  %365 = and i32 %364, 63
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %10, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  store i32 %365, i32* %371, align 4
  br label %372

372:                                              ; preds = %346
  %373 = load i32, i32* %10, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %10, align 4
  br label %340

375:                                              ; preds = %340
  br label %376

376:                                              ; preds = %375, %324
  br label %531

377:                                              ; preds = %4
  %378 = load i32, i32* %8, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %405

380:                                              ; preds = %377
  store i32 0, i32* %10, align 4
  br label %381

381:                                              ; preds = %401, %380
  %382 = load i32, i32* %10, align 4
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp slt i32 %382, %385
  br i1 %386, label %387, label %404

387:                                              ; preds = %381
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %10, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %10, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  store i32 %394, i32* %400, align 4
  br label %401

401:                                              ; preds = %387
  %402 = load i32, i32* %10, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %10, align 4
  br label %381

404:                                              ; preds = %381
  br label %530

405:                                              ; preds = %377
  %406 = load i32*, i32** %6, align 8
  %407 = call i32 @get_bits(i32* %406, i32 2)
  store i32 %407, i32* %11, align 4
  %408 = load i32*, i32** %6, align 8
  %409 = call i32 @get_bits(i32* %408, i32 2)
  store i32 %409, i32* %17, align 4
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sf_vlc_tabs, align 8
  %411 = load i32, i32* %17, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i64 %412
  store %struct.TYPE_8__* %413, %struct.TYPE_8__** %19, align 8
  %414 = load i32, i32* %11, align 4
  %415 = icmp eq i32 %414, 3
  br i1 %415, label %416, label %486

416:                                              ; preds = %405
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sf_vlc_tabs, align 8
  %418 = load i32, i32* %17, align 4
  %419 = add nsw i32 %418, 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i64 %420
  store %struct.TYPE_8__* %421, %struct.TYPE_8__** %19, align 8
  %422 = load i32*, i32** %6, align 8
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @UNPACK_SF_VQ_SHAPE(i32* %422, i32* %425, i32 %428)
  %430 = load i32*, i32** %6, align 8
  %431 = call i32 @get_bits(i32* %430, i32 4)
  %432 = add nsw i32 %431, 56
  %433 = and i32 %432, 63
  store i32 %433, i32* %13, align 4
  %434 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 0
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* %13, align 4
  %440 = add nsw i32 %438, %439
  %441 = and i32 %440, 63
  %442 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 0
  %444 = load i32*, i32** %443, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 0
  store i32 %441, i32* %445, align 4
  store i32 1, i32* %10, align 4
  br label %446

446:                                              ; preds = %482, %416
  %447 = load i32, i32* %10, align 4
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = icmp slt i32 %447, %450
  br i1 %451, label %452, label %485

452:                                              ; preds = %446
  %453 = load i32*, i32** %6, align 8
  %454 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = call i32 @get_vlc2(i32* %453, i32 %456, i32 %459, i32 1)
  store i32 %460, i32* %12, align 4
  %461 = load i32, i32* %13, align 4
  %462 = load i32, i32* %12, align 4
  %463 = call i32 @sign_extend(i32 %462, i32 4)
  %464 = add nsw i32 %461, %463
  %465 = and i32 %464, 63
  store i32 %465, i32* %13, align 4
  %466 = load i32, i32* %13, align 4
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i32 0, i32 0
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %10, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = add nsw i32 %466, %473
  %475 = and i32 %474, 63
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %476, i32 0, i32 0
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* %10, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  store i32 %475, i32* %481, align 4
  br label %482

482:                                              ; preds = %452
  %483 = load i32, i32* %10, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %10, align 4
  br label %446

485:                                              ; preds = %446
  br label %529

486:                                              ; preds = %405
  %487 = load i32*, i32** %6, align 8
  %488 = call i32 @get_bits(i32* %487, i32 6)
  %489 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %489, i32 0, i32 0
  %491 = load i32*, i32** %490, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 0
  store i32 %488, i32* %492, align 4
  store i32 1, i32* %10, align 4
  br label %493

493:                                              ; preds = %525, %486
  %494 = load i32, i32* %10, align 4
  %495 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = icmp slt i32 %494, %497
  br i1 %498, label %499, label %528

499:                                              ; preds = %493
  %500 = load i32*, i32** %6, align 8
  %501 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = call i32 @get_vlc2(i32* %500, i32 %503, i32 %506, i32 1)
  store i32 %507, i32* %12, align 4
  %508 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %509 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %508, i32 0, i32 0
  %510 = load i32*, i32** %509, align 8
  %511 = load i32, i32* %10, align 4
  %512 = sub nsw i32 %511, 1
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %510, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* %12, align 4
  %517 = add nsw i32 %515, %516
  %518 = and i32 %517, 63
  %519 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %520 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %519, i32 0, i32 0
  %521 = load i32*, i32** %520, align 8
  %522 = load i32, i32* %10, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %521, i64 %523
  store i32 %518, i32* %524, align 4
  br label %525

525:                                              ; preds = %499
  %526 = load i32, i32* %10, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %10, align 4
  br label %493

528:                                              ; preds = %493
  br label %529

529:                                              ; preds = %528, %485
  br label %530

530:                                              ; preds = %529, %404
  br label %531

531:                                              ; preds = %4, %530, %376, %241, %53
  %532 = load i32, i32* %11, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %543

534:                                              ; preds = %531
  %535 = load i32, i32* %11, align 4
  %536 = icmp slt i32 %535, 3
  br i1 %536, label %537, label %543

537:                                              ; preds = %534
  %538 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %539 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %540 = load i32, i32* %11, align 4
  %541 = load i32*, i32** %9, align 8
  %542 = call i32 @subtract_sf_weights(%struct.TYPE_9__* %538, %struct.TYPE_10__* %539, i32 %540, i32* %541)
  store i32 %542, i32* %5, align 4
  br label %544

543:                                              ; preds = %534, %531
  store i32 0, i32* %5, align 4
  br label %544

544:                                              ; preds = %543, %537, %193
  %545 = load i32, i32* %5, align 4
  ret i32 %545
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @UNPACK_SF_VQ_SHAPE(i32*, i32*, i32) #1

declare dso_local i32 @get_bitsz(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @sign_extend(i32, i32) #1

declare dso_local i32 @subtract_sf_weights(%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
