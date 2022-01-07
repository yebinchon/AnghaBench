; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_set_major_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_set_major_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32*, i32*, i32, i64*, i32, i64, i32, i32, i32*, i32*, i32*, i32*, i32**, i32**, i32**, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@restart_decoding_params = common dso_local global i32* null, align 8
@restart_channel_params = common dso_local global i32* null, align 8
@MAJOR_HEADER_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @set_major_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_major_params(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 19
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %196, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %199

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 22
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_12__*
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 20
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %33, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i64 %40
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 20
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %51, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %58
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %8, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 21
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_12__*
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 20
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %71, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 %78
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 20
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %89, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %96
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %192, %21
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ult i32 %99, %109
  br i1 %110, label %111, label %195

111:                                              ; preds = %98
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 17
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul i32 %123, %126
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %128
  %130 = load i32, i32* %5, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 %131
  %133 = call i32 @memcpy(i32* %121, %struct.TYPE_12__* %132, i32 8)
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %188, %111
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 20
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ult i32 %135, %140
  br i1 %141, label %142, label %191

142:                                              ; preds = %134
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 20
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = mul i32 %144, %149
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %151
  %153 = load i32, i32* %10, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %11, align 8
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* %11, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %142
  %162 = load i64, i64* %11, align 8
  store i64 %162, i64* %6, align 8
  br label %163

163:                                              ; preds = %161, %142
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 16
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %175 = load i32, i32* %4, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 20
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = mul i32 %175, %180
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %182
  %184 = load i32, i32* %10, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i64 %185
  %187 = call i32 @memcpy(i32* %173, %struct.TYPE_12__* %186, i32 8)
  br label %188

188:                                              ; preds = %163
  %189 = load i32, i32* %10, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %134

191:                                              ; preds = %134
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %4, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %98

195:                                              ; preds = %98
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %5, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %15

199:                                              ; preds = %15
  %200 = load i64, i64* %6, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %228, %199
  %204 = load i32, i32* %4, align 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = icmp ult i32 %204, %207
  br i1 %208, label %209, label %231

209:                                              ; preds = %203
  %210 = load i64, i64* %7, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 6
  %213 = load i64*, i64** %212, align 8
  %214 = load i32, i32* %4, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = icmp slt i64 %210, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %209
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 6
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %7, align 8
  br label %227

227:                                              ; preds = %219, %209
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %4, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %4, align 4
  br label %203

231:                                              ; preds = %203
  %232 = load i64, i64* %7, align 8
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %312, %231
  %236 = load i32, i32* %5, align 4
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ult i32 %236, %239
  br i1 %240, label %241, label %315

241:                                              ; preds = %235
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 18
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i64 %246
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 19
  store %struct.TYPE_10__* %247, %struct.TYPE_10__** %249, align 8
  %250 = load i32*, i32** @restart_decoding_params, align 8
  %251 = load i32, i32* %5, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 14
  store i32* %253, i32** %255, align 8
  %256 = load i32*, i32** @restart_channel_params, align 8
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 12
  store i32* %256, i32** %258, align 8
  store i32 0, i32* %4, align 4
  br label %259

259:                                              ; preds = %308, %241
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* @MAJOR_HEADER_INTERVAL, align 4
  %262 = add nsw i32 %261, 1
  %263 = icmp ult i32 %260, %262
  br i1 %263, label %264, label %311

264:                                              ; preds = %259
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 17
  %267 = load i32**, i32*** %266, align 8
  %268 = load i32, i32* %4, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32*, i32** %267, i64 %269
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %5, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 13
  store i32* %274, i32** %276, align 8
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 16
  %279 = load i32**, i32*** %278, align 8
  %280 = load i32, i32* %4, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %279, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 11
  store i32* %283, i32** %285, align 8
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %287 = call i32 @compare_decoding_params(%struct.TYPE_11__* %286)
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 15
  %290 = load i32**, i32*** %289, align 8
  %291 = load i32, i32* %4, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %290, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %287, i32* %297, align 4
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 13
  %300 = load i32*, i32** %299, align 8
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 14
  store i32* %300, i32** %302, align 8
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 11
  %305 = load i32*, i32** %304, align 8
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 12
  store i32* %305, i32** %307, align 8
  br label %308

308:                                              ; preds = %264
  %309 = load i32, i32* %4, align 4
  %310 = add i32 %309, 1
  store i32 %310, i32* %4, align 4
  br label %259

311:                                              ; preds = %259
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %5, align 4
  %314 = add i32 %313, 1
  store i32 %314, i32* %5, align 4
  br label %235

315:                                              ; preds = %235
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 9
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 10
  store i32 %318, i32* %320, align 4
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 7
  store i32 1, i32* %322, align 8
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 8
  store i64 0, i64* %324, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @compare_decoding_params(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
