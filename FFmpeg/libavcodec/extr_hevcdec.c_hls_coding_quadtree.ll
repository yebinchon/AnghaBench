; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hls_coding_quadtree.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hls_coding_quadtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_12__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, i32, i32, i32)* @hls_coding_quadtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_coding_quadtree(%struct.TYPE_18__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %12, align 8
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %30, %31
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %32, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %5
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %41, %42
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %43, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %40
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %52, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ff_hevc_split_coding_unit_flag_decode(%struct.TYPE_18__* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %15, align 4
  br label %76

66:                                               ; preds = %51, %40, %5
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %67, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %66, %60
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %91, %97
  %99 = icmp sge i32 %85, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %84
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %100, %84, %76
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %107
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %120, %126
  %128 = icmp sge i32 %114, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %113
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %113, %107
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %310

136:                                              ; preds = %133
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %142, %148
  %150 = shl i32 1, %149
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %13, align 4
  %153 = ashr i32 %152, 1
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %154, %155
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %157, %158
  store i32 %159, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = sub nsw i32 %163, 1
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  %167 = call i32 @hls_coding_quadtree(%struct.TYPE_18__* %160, i32 %161, i32 %162, i32 %164, i32 %166)
  store i32 %167, i32* %20, align 4
  %168 = load i32, i32* %20, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %136
  %171 = load i32, i32* %20, align 4
  store i32 %171, i32* %6, align 4
  br label %376

172:                                              ; preds = %136
  %173 = load i32, i32* %20, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %198

175:                                              ; preds = %172
  %176 = load i32, i32* %18, align 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %176, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %175
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %10, align 4
  %189 = sub nsw i32 %188, 1
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  %192 = call i32 @hls_coding_quadtree(%struct.TYPE_18__* %185, i32 %186, i32 %187, i32 %189, i32 %191)
  store i32 %192, i32* %20, align 4
  %193 = load i32, i32* %20, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %184
  %196 = load i32, i32* %20, align 4
  store i32 %196, i32* %6, align 4
  br label %376

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %197, %175, %172
  %199 = load i32, i32* %20, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %224

201:                                              ; preds = %198
  %202 = load i32, i32* %19, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %202, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %201
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %10, align 4
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, 1
  %218 = call i32 @hls_coding_quadtree(%struct.TYPE_18__* %211, i32 %212, i32 %213, i32 %215, i32 %217)
  store i32 %218, i32* %20, align 4
  %219 = load i32, i32* %20, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %210
  %222 = load i32, i32* %20, align 4
  store i32 %222, i32* %6, align 4
  br label %376

223:                                              ; preds = %210
  br label %224

224:                                              ; preds = %223, %201, %198
  %225 = load i32, i32* %20, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %259

227:                                              ; preds = %224
  %228 = load i32, i32* %18, align 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp slt i32 %228, %234
  br i1 %235, label %236, label %259

236:                                              ; preds = %227
  %237 = load i32, i32* %19, align 4
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %237, %243
  br i1 %244, label %245, label %259

245:                                              ; preds = %236
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* %10, align 4
  %250 = sub nsw i32 %249, 1
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 1
  %253 = call i32 @hls_coding_quadtree(%struct.TYPE_18__* %246, i32 %247, i32 %248, i32 %250, i32 %252)
  store i32 %253, i32* %20, align 4
  %254 = load i32, i32* %20, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %245
  %257 = load i32, i32* %20, align 4
  store i32 %257, i32* %6, align 4
  br label %376

258:                                              ; preds = %245
  br label %259

259:                                              ; preds = %258, %236, %227, %224
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* %10, align 4
  %262 = shl i32 1, %261
  %263 = add nsw i32 %260, %262
  %264 = load i32, i32* %16, align 4
  %265 = and i32 %263, %264
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %281

267:                                              ; preds = %259
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %10, align 4
  %270 = shl i32 1, %269
  %271 = add nsw i32 %268, %270
  %272 = load i32, i32* %16, align 4
  %273 = and i32 %271, %272
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %267
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  br label %281

281:                                              ; preds = %275, %267, %259
  %282 = load i32, i32* %20, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %309

284:                                              ; preds = %281
  %285 = load i32, i32* %18, align 4
  %286 = load i32, i32* %17, align 4
  %287 = add nsw i32 %285, %286
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp slt i32 %287, %293
  br i1 %294, label %306, label %295

295:                                              ; preds = %284
  %296 = load i32, i32* %19, align 4
  %297 = load i32, i32* %17, align 4
  %298 = add nsw i32 %296, %297
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = icmp slt i32 %298, %304
  br label %306

306:                                              ; preds = %295, %284
  %307 = phi i1 [ true, %284 ], [ %305, %295 ]
  %308 = zext i1 %307 to i32
  store i32 %308, i32* %6, align 4
  br label %376

309:                                              ; preds = %281
  store i32 0, i32* %6, align 4
  br label %376

310:                                              ; preds = %133
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %10, align 4
  %315 = call i32 @hls_coding_unit(%struct.TYPE_18__* %311, i32 %312, i32 %313, i32 %314)
  store i32 %315, i32* %14, align 4
  %316 = load i32, i32* %14, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %310
  %319 = load i32, i32* %14, align 4
  store i32 %319, i32* %6, align 4
  br label %376

320:                                              ; preds = %310
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* %13, align 4
  %323 = add nsw i32 %321, %322
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = shl i32 1, %329
  %331 = srem i32 %323, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %344

333:                                              ; preds = %320
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* %13, align 4
  %336 = add nsw i32 %334, %335
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = icmp sge i32 %336, %342
  br i1 %343, label %344, label %375

344:                                              ; preds = %333, %320
  %345 = load i32, i32* %9, align 4
  %346 = load i32, i32* %13, align 4
  %347 = add nsw i32 %345, %346
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = shl i32 1, %353
  %355 = srem i32 %347, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %368

357:                                              ; preds = %344
  %358 = load i32, i32* %9, align 4
  %359 = load i32, i32* %13, align 4
  %360 = add nsw i32 %358, %359
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp sge i32 %360, %366
  br i1 %367, label %368, label %375

368:                                              ; preds = %357, %344
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %370 = call i32 @ff_hevc_end_of_slice_flag_decode(%struct.TYPE_18__* %369)
  store i32 %370, i32* %21, align 4
  %371 = load i32, i32* %21, align 4
  %372 = icmp ne i32 %371, 0
  %373 = xor i1 %372, true
  %374 = zext i1 %373 to i32
  store i32 %374, i32* %6, align 4
  br label %376

375:                                              ; preds = %357, %333
  store i32 1, i32* %6, align 4
  br label %376

376:                                              ; preds = %375, %368, %318, %309, %306, %256, %221, %195, %170
  %377 = load i32, i32* %6, align 4
  ret i32 %377
}

declare dso_local i32 @ff_hevc_split_coding_unit_flag_decode(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @hls_coding_unit(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @ff_hevc_end_of_slice_flag_decode(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
