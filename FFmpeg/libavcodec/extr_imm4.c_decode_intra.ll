; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imm4.c_decode_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imm4.c_decode_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (i64, i32, i32)* }
%struct.TYPE_11__ = type { i32*, i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@intra_cb = common dso_local global i32* null, align 8
@cbplo_tab = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, %struct.TYPE_11__*)* @decode_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_intra(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %4, align 4
  br label %311

30:                                               ; preds = %23
  %31 = load i32*, i32** @intra_cb, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %47

40:                                               ; preds = %3
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %43, 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %30
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %52
  br label %65

65:                                               ; preds = %64, %47
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %307, %65
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %310

72:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %303, %72
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %306

79:                                               ; preds = %73
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cbplo_tab, i32 0, i32 1), align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cbplo_tab, i32 0, i32 0), align 4
  %83 = call i32 @get_vlc2(i32* %80, i32 %81, i32 %82, i32 1)
  %84 = ashr i32 %83, 4
  store i32 %84, i32* %15, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @get_bits1(i32* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @get_cbphi(i32* %87, i32 1)
  store i32 %88, i32* %14, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %14, align 4
  %93 = shl i32 %92, 2
  %94 = or i32 %91, %93
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @decode_blocks(%struct.TYPE_12__* %89, i32* %90, i32 %94, i32 0, i32 %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %79
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %311

102:                                              ; preds = %79
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %105, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %112, %117
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %111, %119
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 %106(i64 %123, i32 %128, i32 %133)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %137, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %144, %149
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %143, %151
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = add nsw i64 %155, 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 %138(i64 %156, i32 %161, i32 %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %170, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %178, %183
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %176, %185
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %186, %188
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 %171(i64 %189, i32 %194, i32 %199)
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %203, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %211, %216
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %209, %218
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %219, %221
  %223 = add nsw i64 %222, 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 %204(i64 %223, i32 %228, i32 %233)
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %237, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 1
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 1
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = ashr i32 %244, 1
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = mul nsw i32 %245, %250
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %243, %252
  %254 = load i32, i32* %10, align 4
  %255 = ashr i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %253, %256
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 4
  %267 = load i32, i32* %266, align 4
  %268 = call i32 %238(i64 %257, i32 %262, i32 %267)
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %271, align 8
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 2
  %277 = load i64, i64* %276, align 8
  %278 = load i32, i32* %11, align 4
  %279 = ashr i32 %278, 1
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 2
  %284 = load i32, i32* %283, align 4
  %285 = mul nsw i32 %279, %284
  %286 = sext i32 %285 to i64
  %287 = add nsw i64 %277, %286
  %288 = load i32, i32* %10, align 4
  %289 = ashr i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = add nsw i64 %287, %290
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 3
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 5
  %301 = load i32, i32* %300, align 4
  %302 = call i32 %272(i64 %291, i32 %296, i32 %301)
  br label %303

303:                                              ; preds = %102
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 16
  store i32 %305, i32* %10, align 4
  br label %73

306:                                              ; preds = %73
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %308, 16
  store i32 %309, i32* %11, align 4
  br label %66

310:                                              ; preds = %66
  store i32 0, i32* %4, align 4
  br label %311

311:                                              ; preds = %310, %100, %28
  %312 = load i32, i32* %4, align 4
  ret i32 %312
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_cbphi(i32*, i32) #1

declare dso_local i32 @decode_blocks(%struct.TYPE_12__*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
