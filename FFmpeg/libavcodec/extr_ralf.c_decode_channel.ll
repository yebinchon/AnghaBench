; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ralf.c_decode_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ralf.c_decode_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32**, i32, i32, i32, i32*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_12__**, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FILTER_RAW = common dso_local global i32 0, align 4
@FILTER_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32, i32, i32, i32)* @decode_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_channel(%struct.TYPE_13__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %32
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %17, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %22, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @get_vlc2(i32* %41, i32 %45, i32 9, i32 2)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %73

54:                                               ; preds = %6
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 2
  %59 = ashr i32 %58, 6
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 6
  %69 = sub nsw i32 %64, %68
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %54, %6
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FILTER_RAW, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %73
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %92, %79
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @get_bits(i32* %85, i32 %86)
  %88 = load i32*, i32** %22, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %80

95:                                               ; preds = %80
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 0, i32* %101, align 4
  store i32 0, i32* %7, align 4
  br label %352

102:                                              ; preds = %73
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @get_vlc2(i32* %103, i32 %107, i32 9, i32 2)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @extend_code(i32* %116, i32 %123, i32 127, i32 4)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %124, i32* %130, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @FILTER_NONE, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %102
  %137 = load i32*, i32** %22, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 4, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @memset(i32* %137, i32 0, i32 %141)
  store i32 0, i32* %7, align 4
  br label %352

143:                                              ; preds = %102
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 1
  br i1 %147, label %148, label %237

148:                                              ; preds = %143
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %150, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %151, i64 %155
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 5
  store %struct.TYPE_12__* %158, %struct.TYPE_12__** %25, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %21, align 4
  store i32 0, i32* %14, align 4
  br label %162

162:                                              ; preds = %233, %148
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %236

168:                                              ; preds = %162
  %169 = load i32*, i32** %9, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %171 = load i32, i32* %23, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %177 = load i32, i32* %23, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @get_vlc2(i32* %169, i32 %175, i32 %181, i32 2)
  %183 = ptrtoint i8* %182 to i32
  store i32 %183, i32* %15, align 4
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %21, align 4
  %187 = call i32 @extend_code(i32* %184, i32 %185, i32 21, i32 %186)
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %23, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %168
  %191 = load i32, i32* %21, align 4
  %192 = shl i32 12, %191
  %193 = load i32, i32* %24, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %24, align 4
  br label %195

195:                                              ; preds = %190, %168
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %24, align 4
  %198 = sub nsw i32 %196, %197
  store i32 %198, i32* %24, align 4
  %199 = load i32, i32* %24, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %199, i32* %205, align 4
  %206 = load i32, i32* %24, align 4
  %207 = load i32, i32* %21, align 4
  %208 = ashr i32 %206, %207
  store i32 %208, i32* %23, align 4
  %209 = load i32, i32* %23, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %195
  %212 = load i32, i32* %23, align 4
  %213 = sub nsw i32 0, %212
  %214 = call i32 @av_log2(i32 %213)
  %215 = sub nsw i32 -1, %214
  store i32 %215, i32* %23, align 4
  %216 = load i32, i32* %23, align 4
  %217 = icmp slt i32 %216, -5
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  store i32 -5, i32* %23, align 4
  br label %219

219:                                              ; preds = %218, %211
  br label %232

220:                                              ; preds = %195
  %221 = load i32, i32* %23, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %220
  %224 = load i32, i32* %23, align 4
  %225 = call i32 @av_log2(i32 %224)
  %226 = add nsw i32 1, %225
  store i32 %226, i32* %23, align 4
  %227 = load i32, i32* %23, align 4
  %228 = icmp sgt i32 %227, 5
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store i32 5, i32* %23, align 4
  br label %230

230:                                              ; preds = %229, %223
  br label %231

231:                                              ; preds = %230, %220
  br label %232

232:                                              ; preds = %231, %219
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %14, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %14, align 4
  br label %162

236:                                              ; preds = %162
  br label %237

237:                                              ; preds = %236, %143
  %238 = load i32*, i32** %9, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i8* @get_vlc2(i32* %238, i32 %242, i32 %246, i32 2)
  %248 = ptrtoint i8* %247 to i32
  store i32 %248, i32* %16, align 4
  %249 = load i32, i32* %16, align 4
  %250 = icmp sge i32 %249, 15
  br i1 %250, label %251, label %274

251:                                              ; preds = %237
  %252 = load i32, i32* %16, align 4
  %253 = sdiv i32 %252, 5
  %254 = sub nsw i32 %253, 3
  %255 = sdiv i32 %254, 2
  %256 = call i32 @av_clip(i32 %255, i32 0, i32 10)
  store i32 %256, i32* %21, align 4
  %257 = load i32, i32* %21, align 4
  %258 = icmp sgt i32 %257, 9
  br i1 %258, label %259, label %266

259:                                              ; preds = %251
  %260 = load i32, i32* %16, align 4
  %261 = srem i32 %260, 5
  %262 = icmp ne i32 %261, 2
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i32, i32* %21, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %21, align 4
  br label %266

266:                                              ; preds = %263, %259, %251
  store i32 10, i32* %19, align 4
  store i32 21, i32* %20, align 4
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = load i32, i32* %16, align 4
  %271 = sub nsw i32 %270, 15
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i64 %272
  store %struct.TYPE_12__* %273, %struct.TYPE_12__** %18, align 8
  br label %281

274:                                              ; preds = %237
  store i32 0, i32* %21, align 4
  store i32 6, i32* %19, align 4
  store i32 13, i32* %20, align 4
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 %279
  store %struct.TYPE_12__* %280, %struct.TYPE_12__** %18, align 8
  br label %281

281:                                              ; preds = %274, %266
  store i32 0, i32* %14, align 4
  br label %282

282:                                              ; preds = %348, %281
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* %11, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %351

286:                                              ; preds = %282
  %287 = load i32*, i32** %9, align 8
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = call i8* @get_vlc2(i32* %287, i32 %290, i32 %293, i32 2)
  %295 = ptrtoint i8* %294 to i32
  store i32 %295, i32* %15, align 4
  %296 = load i32, i32* %15, align 4
  %297 = load i32, i32* %20, align 4
  %298 = sdiv i32 %296, %297
  store i32 %298, i32* %26, align 4
  %299 = load i32, i32* %15, align 4
  %300 = load i32, i32* %20, align 4
  %301 = srem i32 %299, %300
  store i32 %301, i32* %27, align 4
  %302 = load i32*, i32** %9, align 8
  %303 = load i32, i32* %26, align 4
  %304 = load i32, i32* %19, align 4
  %305 = call i32 @extend_code(i32* %302, i32 %303, i32 %304, i32 0)
  %306 = load i32, i32* %21, align 4
  %307 = shl i32 1, %306
  %308 = mul i32 %305, %307
  %309 = load i32*, i32** %22, align 8
  %310 = load i32, i32* %14, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  store i32 %308, i32* %312, align 4
  %313 = load i32*, i32** %9, align 8
  %314 = load i32, i32* %27, align 4
  %315 = load i32, i32* %19, align 4
  %316 = call i32 @extend_code(i32* %313, i32 %314, i32 %315, i32 0)
  %317 = load i32, i32* %21, align 4
  %318 = shl i32 1, %317
  %319 = mul i32 %316, %318
  %320 = load i32*, i32** %22, align 8
  %321 = load i32, i32* %14, align 4
  %322 = add nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %320, i64 %323
  store i32 %319, i32* %324, align 4
  %325 = load i32, i32* %21, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %347

327:                                              ; preds = %286
  %328 = load i32*, i32** %9, align 8
  %329 = load i32, i32* %21, align 4
  %330 = call i32 @get_bits(i32* %328, i32 %329)
  %331 = load i32*, i32** %22, align 8
  %332 = load i32, i32* %14, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %330
  store i32 %336, i32* %334, align 4
  %337 = load i32*, i32** %9, align 8
  %338 = load i32, i32* %21, align 4
  %339 = call i32 @get_bits(i32* %337, i32 %338)
  %340 = load i32*, i32** %22, align 8
  %341 = load i32, i32* %14, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = or i32 %345, %339
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %327, %286
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %14, align 4
  %350 = add nsw i32 %349, 2
  store i32 %350, i32* %14, align 4
  br label %282

351:                                              ; preds = %282
  store i32 0, i32* %7, align 4
  br label %352

352:                                              ; preds = %351, %136, %95
  %353 = load i32, i32* %7, align 4
  ret i32 %353
}

declare dso_local i8* @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @extend_code(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
