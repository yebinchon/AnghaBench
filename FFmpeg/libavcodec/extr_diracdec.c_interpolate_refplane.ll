; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_interpolate_refplane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_interpolate_refplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32 (i64, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32 (i64, i64, i64, i64, i32, i32, i32)* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__*, i64**, i64** }
%struct.TYPE_10__ = type { i32*, i64* }

@EDGE_WIDTH = common dso_local global i32 0, align 4
@EDGE_TOP = common dso_local global i32 0, align 4
@EDGE_BOTTOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, i32)* @interpolate_refplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpolate_refplane(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @EDGE_WIDTH, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %13, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i64**, i64*** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64*, i64** %27, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 %24, i64* %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32 (i64, i32, i32, i32, i32, i32, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32)** %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i64**, i64*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64*, i64** %39, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @EDGE_TOP, align 4
  %60 = load i32, i32* @EDGE_BOTTOM, align 4
  %61 = or i32 %59, %60
  %62 = call i32 %36(i64 %45, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %326

68:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %164, %68
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %167

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load i64**, i64*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64*, i64** %75, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %112, label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 2, %87
  %89 = add nsw i32 %86, %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %89, %98
  %100 = add nsw i32 %99, 32
  %101 = call i64 @av_malloc(i32 %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load i64**, i64*** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64*, i64** %104, i64 %106
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 %101, i64* %111, align 8
  br label %112

112:                                              ; preds = %85, %72
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = load i64**, i64*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64*, i64** %115, i64 %117
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %112
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %6, align 4
  br label %326

128:                                              ; preds = %112
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 3
  %131 = load i64**, i64*** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64*, i64** %131, i64 %133
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %140, %149
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %139, %151
  %153 = add nsw i64 %152, 16
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load i64**, i64*** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64*, i64** %156, i64 %158
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  store i64 %153, i64* %163, align 8
  br label %164

164:                                              ; preds = %128
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %69

167:                                              ; preds = %69
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %319, label %176

176:                                              ; preds = %167
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32 (i64, i64, i64, i64, i32, i32, i32)*, i32 (i64, i64, i64, i64, i32, i32, i32)** %179, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load i64**, i64*** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64*, i64** %183, i64 %185
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  %192 = load i64**, i64*** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64*, i64** %192, i64 %194
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  %201 = load i64**, i64*** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64*, i64** %201, i64 %203
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = load i64**, i64*** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64*, i64** %210, i64 %212
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %11, align 4
  %228 = call i32 %180(i64 %189, i64 %198, i64 %207, i64 %216, i32 %225, i32 %226, i32 %227)
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32 (i64, i32, i32, i32, i32, i32, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32)** %231, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 2
  %235 = load i64**, i64*** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64*, i64** %235, i64 %237
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* @EDGE_TOP, align 4
  %256 = load i32, i32* @EDGE_BOTTOM, align 4
  %257 = or i32 %255, %256
  %258 = call i32 %232(i64 %241, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %257)
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = load i32 (i64, i32, i32, i32, i32, i32, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32)** %261, align 8
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 2
  %265 = load i64**, i64*** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64*, i64** %265, i64 %267
  %269 = load i64*, i64** %268, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 2
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* %13, align 4
  %285 = load i32, i32* @EDGE_TOP, align 4
  %286 = load i32, i32* @EDGE_BOTTOM, align 4
  %287 = or i32 %285, %286
  %288 = call i32 %262(i64 %271, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %287)
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = load i32 (i64, i32, i32, i32, i32, i32, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32)** %291, align 8
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 2
  %295 = load i64**, i64*** %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64*, i64** %295, i64 %297
  %299 = load i64*, i64** %298, align 8
  %300 = getelementptr inbounds i64, i64* %299, i64 3
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* %13, align 4
  %315 = load i32, i32* @EDGE_TOP, align 4
  %316 = load i32, i32* @EDGE_BOTTOM, align 4
  %317 = or i32 %315, %316
  %318 = call i32 %292(i64 %301, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %317)
  br label %319

319:                                              ; preds = %176, %167
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %9, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  store i32 1, i32* %325, align 4
  store i32 0, i32* %6, align 4
  br label %326

326:                                              ; preds = %319, %125, %67
  %327 = load i32, i32* %6, align 4
  ret i32 %327
}

declare dso_local i64 @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
