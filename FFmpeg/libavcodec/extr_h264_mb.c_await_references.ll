; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mb.c_await_references.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mb.c_await_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32*, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_14__*)* @await_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @await_references(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x [48 x i32]], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 8, i1 false)
  %34 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %35 = bitcast [48 x i32]* %34 to i32**
  %36 = call i32 @memset(i32** %35, i32 -1, i32 384)
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @IS_16X16(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %2
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %44 = bitcast [48 x i32]* %43 to i32**
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @IS_DIR(i32 %45, i32 0, i32 0)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @IS_DIR(i32 %47, i32 0, i32 1)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %50 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %41, %struct.TYPE_14__* %42, i32** %44, i32 0, i32 16, i32 0, i32 %46, i32 %48, i32* %49)
  br label %238

51:                                               ; preds = %2
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @IS_16X8(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %59 = bitcast [48 x i32]* %58 to i32**
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @IS_DIR(i32 %60, i32 0, i32 0)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @IS_DIR(i32 %62, i32 0, i32 1)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %65 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %56, %struct.TYPE_14__* %57, i32** %59, i32 0, i32 8, i32 0, i32 %61, i32 %63, i32* %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %69 = bitcast [48 x i32]* %68 to i32**
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @IS_DIR(i32 %70, i32 1, i32 0)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @IS_DIR(i32 %72, i32 1, i32 1)
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %75 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %66, %struct.TYPE_14__* %67, i32** %69, i32 8, i32 8, i32 8, i32 %71, i32 %73, i32* %74)
  br label %237

76:                                               ; preds = %51
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @IS_8X16(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %84 = bitcast [48 x i32]* %83 to i32**
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @IS_DIR(i32 %85, i32 0, i32 0)
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @IS_DIR(i32 %87, i32 0, i32 1)
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %90 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %81, %struct.TYPE_14__* %82, i32** %84, i32 0, i32 16, i32 0, i32 %86, i32 %88, i32* %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %94 = bitcast [48 x i32]* %93 to i32**
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @IS_DIR(i32 %95, i32 1, i32 0)
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @IS_DIR(i32 %97, i32 1, i32 1)
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %100 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %91, %struct.TYPE_14__* %92, i32** %94, i32 4, i32 16, i32 0, i32 %96, i32 %98, i32* %99)
  br label %236

101:                                              ; preds = %76
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @IS_8X8(i32 %102)
  %104 = call i32 @av_assert2(i32 %103)
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %232, %101
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %235

108:                                              ; preds = %105
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = mul nsw i32 4, %116
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %11, align 4
  %119 = and i32 %118, 2
  %120 = shl i32 %119, 2
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i64 @IS_SUB_8X8(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %108
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %128 = bitcast [48 x i32]* %127 to i32**
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @IS_DIR(i32 %131, i32 0, i32 0)
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @IS_DIR(i32 %133, i32 0, i32 1)
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %136 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %125, %struct.TYPE_14__* %126, i32** %128, i32 %129, i32 8, i32 %130, i32 %132, i32 %134, i32* %135)
  br label %231

137:                                              ; preds = %108
  %138 = load i32, i32* %12, align 4
  %139 = call i64 @IS_SUB_8X4(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %144 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %145 = bitcast [48 x i32]* %144 to i32**
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @IS_DIR(i32 %148, i32 0, i32 0)
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @IS_DIR(i32 %150, i32 0, i32 1)
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %153 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %142, %struct.TYPE_14__* %143, i32** %145, i32 %146, i32 4, i32 %147, i32 %149, i32 %151, i32* %152)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %156 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %157 = bitcast [48 x i32]* %156 to i32**
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 2
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 4
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @IS_DIR(i32 %162, i32 0, i32 0)
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @IS_DIR(i32 %164, i32 0, i32 1)
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %167 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %154, %struct.TYPE_14__* %155, i32** %157, i32 %159, i32 4, i32 %161, i32 %163, i32 %165, i32* %166)
  br label %230

168:                                              ; preds = %137
  %169 = load i32, i32* %12, align 4
  %170 = call i64 @IS_SUB_4X8(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %198

172:                                              ; preds = %168
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %175 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %176 = bitcast [48 x i32]* %175 to i32**
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @IS_DIR(i32 %179, i32 0, i32 0)
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @IS_DIR(i32 %181, i32 0, i32 1)
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %184 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %173, %struct.TYPE_14__* %174, i32** %176, i32 %177, i32 8, i32 %178, i32 %180, i32 %182, i32* %183)
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %187 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %188 = bitcast [48 x i32]* %187 to i32**
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @IS_DIR(i32 %192, i32 0, i32 0)
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @IS_DIR(i32 %194, i32 0, i32 1)
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %197 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %185, %struct.TYPE_14__* %186, i32** %188, i32 %190, i32 8, i32 %191, i32 %193, i32 %195, i32* %196)
  br label %229

198:                                              ; preds = %168
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @IS_SUB_4X4(i32 %199)
  %201 = call i32 @av_assert2(i32 %200)
  store i32 0, i32* %15, align 4
  br label %202

202:                                              ; preds = %225, %198
  %203 = load i32, i32* %15, align 4
  %204 = icmp slt i32 %203, 4
  br i1 %204, label %205, label %228

205:                                              ; preds = %202
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %15, align 4
  %208 = and i32 %207, 2
  %209 = mul nsw i32 2, %208
  %210 = add nsw i32 %206, %209
  store i32 %210, i32* %16, align 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %213 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 0
  %214 = bitcast [48 x i32]* %213 to i32**
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %15, align 4
  %217 = add nsw i32 %215, %216
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @IS_DIR(i32 %219, i32 0, i32 0)
  %221 = load i32, i32* %12, align 4
  %222 = call i32 @IS_DIR(i32 %221, i32 0, i32 1)
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %224 = call i32 @get_lowest_part_y(%struct.TYPE_16__* %211, %struct.TYPE_14__* %212, i32** %214, i32 %217, i32 4, i32 %218, i32 %220, i32 %222, i32* %223)
  br label %225

225:                                              ; preds = %205
  %226 = load i32, i32* %15, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %15, align 4
  br label %202

228:                                              ; preds = %202
  br label %229

229:                                              ; preds = %228, %172
  br label %230

230:                                              ; preds = %229, %141
  br label %231

231:                                              ; preds = %230, %124
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %105

235:                                              ; preds = %105
  br label %236

236:                                              ; preds = %235, %80
  br label %237

237:                                              ; preds = %236, %55
  br label %238

238:                                              ; preds = %237, %40
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %241, 1
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %398, %238
  %244 = load i32, i32* %10, align 4
  %245 = icmp sge i32 %244, 0
  br i1 %245, label %246, label %401

246:                                              ; preds = %243
  store i32 0, i32* %9, align 4
  br label %247

247:                                              ; preds = %394, %246
  %248 = load i32, i32* %9, align 4
  %249 = icmp slt i32 %248, 48
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br label %256

256:                                              ; preds = %250, %247
  %257 = phi i1 [ false, %247 ], [ %255, %250 ]
  br i1 %257, label %258, label %397

258:                                              ; preds = %256
  %259 = load i32, i32* %10, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [2 x [48 x i32]], [2 x [48 x i32]]* %7, i64 0, i64 %260
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [48 x i32], [48 x i32]* %261, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %17, align 4
  %266 = load i32, i32* %17, align 4
  %267 = icmp sge i32 %266, 0
  br i1 %267, label %268, label %393

268:                                              ; preds = %258
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 3
  %271 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %270, align 8
  %272 = load i32, i32* %10, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %271, i64 %273
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i64 %277
  store %struct.TYPE_15__* %278, %struct.TYPE_15__** %18, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = sub nsw i32 %281, 1
  store i32 %282, i32* %19, align 4
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %20, align 4
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = mul nsw i32 16, %290
  %292 = load i32, i32* %20, align 4
  %293 = ashr i32 %291, %292
  store i32 %293, i32* %21, align 4
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %295 = call i32 @MB_MBAFF(%struct.TYPE_14__* %294)
  %296 = load i32, i32* %17, align 4
  %297 = shl i32 %296, %295
  store i32 %297, i32* %17, align 4
  %298 = load i32, i32* %10, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, -1
  store i32 %302, i32* %300, align 4
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %304 = call i64 @FIELD_PICTURE(%struct.TYPE_16__* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %345, label %306

306:                                              ; preds = %268
  %307 = load i32, i32* %20, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %345

309:                                              ; preds = %306
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %314, 3
  %316 = icmp eq i32 %315, 3
  %317 = zext i1 %316 to i32
  %318 = call i32 @av_assert2(i32 %317)
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 2
  %323 = load i32, i32* %17, align 4
  %324 = ashr i32 %323, 1
  %325 = load i32, i32* %17, align 4
  %326 = and i32 %325, 1
  %327 = icmp ne i32 %326, 0
  %328 = xor i1 %327, true
  %329 = zext i1 %328 to i32
  %330 = sub nsw i32 %324, %329
  %331 = load i32, i32* %21, align 4
  %332 = sub nsw i32 %331, 1
  %333 = call i32 @FFMIN(i32 %330, i32 %332)
  %334 = call i32 @ff_thread_await_progress(i32* %322, i32 %333, i32 1)
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 2
  %339 = load i32, i32* %17, align 4
  %340 = ashr i32 %339, 1
  %341 = load i32, i32* %21, align 4
  %342 = sub nsw i32 %341, 1
  %343 = call i32 @FFMIN(i32 %340, i32 %342)
  %344 = call i32 @ff_thread_await_progress(i32* %338, i32 %343, i32 0)
  br label %392

345:                                              ; preds = %306, %268
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %347 = call i64 @FIELD_PICTURE(%struct.TYPE_16__* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %365

349:                                              ; preds = %345
  %350 = load i32, i32* %20, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %365, label %352

352:                                              ; preds = %349
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 2
  %357 = load i32, i32* %17, align 4
  %358 = mul nsw i32 %357, 2
  %359 = load i32, i32* %19, align 4
  %360 = add nsw i32 %358, %359
  %361 = load i32, i32* %21, align 4
  %362 = sub nsw i32 %361, 1
  %363 = call i32 @FFMIN(i32 %360, i32 %362)
  %364 = call i32 @ff_thread_await_progress(i32* %356, i32 %363, i32 0)
  br label %391

365:                                              ; preds = %349, %345
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %367 = call i64 @FIELD_PICTURE(%struct.TYPE_16__* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %380

369:                                              ; preds = %365
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 2
  %374 = load i32, i32* %17, align 4
  %375 = load i32, i32* %21, align 4
  %376 = sub nsw i32 %375, 1
  %377 = call i32 @FFMIN(i32 %374, i32 %376)
  %378 = load i32, i32* %19, align 4
  %379 = call i32 @ff_thread_await_progress(i32* %373, i32 %377, i32 %378)
  br label %390

380:                                              ; preds = %365
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 2
  %385 = load i32, i32* %17, align 4
  %386 = load i32, i32* %21, align 4
  %387 = sub nsw i32 %386, 1
  %388 = call i32 @FFMIN(i32 %385, i32 %387)
  %389 = call i32 @ff_thread_await_progress(i32* %384, i32 %388, i32 0)
  br label %390

390:                                              ; preds = %380, %369
  br label %391

391:                                              ; preds = %390, %352
  br label %392

392:                                              ; preds = %391, %309
  br label %393

393:                                              ; preds = %392, %258
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %9, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %9, align 4
  br label %247

397:                                              ; preds = %256
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %10, align 4
  %400 = add nsw i32 %399, -1
  store i32 %400, i32* %10, align 4
  br label %243

401:                                              ; preds = %243
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i64 @IS_16X16(i32) #2

declare dso_local i32 @get_lowest_part_y(%struct.TYPE_16__*, %struct.TYPE_14__*, i32**, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @IS_DIR(i32, i32, i32) #2

declare dso_local i64 @IS_16X8(i32) #2

declare dso_local i64 @IS_8X16(i32) #2

declare dso_local i32 @av_assert2(i32) #2

declare dso_local i32 @IS_8X8(i32) #2

declare dso_local i64 @IS_SUB_8X8(i32) #2

declare dso_local i64 @IS_SUB_8X4(i32) #2

declare dso_local i64 @IS_SUB_4X8(i32) #2

declare dso_local i32 @IS_SUB_4X4(i32) #2

declare dso_local i32 @MB_MBAFF(%struct.TYPE_14__*) #2

declare dso_local i64 @FIELD_PICTURE(%struct.TYPE_16__*) #2

declare dso_local i32 @ff_thread_await_progress(i32*, i32, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
