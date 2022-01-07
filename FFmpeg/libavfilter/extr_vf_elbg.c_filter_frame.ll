; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_elbg.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_elbg.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__**, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64*, i64*, i32*, i32, i64*, %struct.TYPE_13__*, i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64**, i32*, i32 }

@R = common dso_local global i64 0, align 8
@G = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@NB_COMPONENTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %6, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @R, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @G, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @B, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %14, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64**, i64*** %43, align 8
  %45 = getelementptr inbounds i64*, i64** %44, i64 0
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %11, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %115, %2
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %118

53:                                               ; preds = %47
  %54 = load i64*, i64** %11, align 8
  store i64* %54, i64** %10, align 8
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %103, %53
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %106

61:                                               ; preds = %55
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64 %65, i64* %72, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = load i64, i64* %13, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  store i64 %76, i64* %83, align 8
  %84 = load i64*, i64** %10, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  store i64 %87, i64* %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64*, i64** %10, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  store i64* %102, i64** %10, align 8
  br label %103

103:                                              ; preds = %61
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %55

106:                                              ; preds = %55
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i64*, i64** %11, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64* %114, i64** %11, align 8
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %47

118:                                              ; preds = %47
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* @NB_COMPONENTS, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 4
  %137 = load i64*, i64** %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 7
  %140 = call i32 @avpriv_init_elbg(i64* %121, i32 %122, i32 %125, i32* %128, i32 %131, i32 %134, i64* %137, i32* %139)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* @NB_COMPONENTS, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 4
  %159 = load i64*, i64** %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 7
  %162 = call i32 @avpriv_do_elbg(i64* %143, i32 %144, i32 %147, i32* %150, i32 %153, i32 %156, i64* %159, i32* %161)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %299

167:                                              ; preds = %118
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %172, i64 0
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  store %struct.TYPE_17__* %174, %struct.TYPE_17__** %15, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call %struct.TYPE_16__* @ff_get_video_buffer(%struct.TYPE_17__* %175, i32 %178, i32 %181)
  store %struct.TYPE_16__* %182, %struct.TYPE_16__** %16, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %184 = icmp ne %struct.TYPE_16__* %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %167
  %186 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = call i32 @AVERROR(i32 %187)
  store i32 %188, i32* %3, align 4
  br label %400

189:                                              ; preds = %167
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i64**, i64*** %197, align 8
  %199 = getelementptr inbounds i64*, i64** %198, i64 1
  %200 = load i64*, i64** %199, align 8
  %201 = bitcast i64* %200 to i32*
  store i32* %201, i32** %17, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i64**, i64*** %203, align 8
  %205 = getelementptr inbounds i64*, i64** %204, i64 0
  %206 = load i64*, i64** %205, align 8
  store i64* %206, i64** %11, align 8
  store i32 0, i32* %7, align 4
  br label %207

207:                                              ; preds = %249, %189
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %252

213:                                              ; preds = %207
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = mul nsw i32 %217, 3
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 16
  %223 = or i32 -16777216, %222
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = mul nsw i32 %227, 3
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %226, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 8
  %234 = or i32 %223, %233
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = mul nsw i32 %238, 3
  %240 = add nsw i32 %239, 2
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %237, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %234, %243
  %245 = load i32*, i32** %17, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %244, i32* %248, align 4
  br label %249

249:                                              ; preds = %213
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %7, align 4
  br label %207

252:                                              ; preds = %207
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %253

253:                                              ; preds = %292, %252
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %295

259:                                              ; preds = %253
  %260 = load i64*, i64** %11, align 8
  store i64* %260, i64** %10, align 8
  store i32 0, i32* %8, align 4
  br label %261

261:                                              ; preds = %278, %259
  %262 = load i32, i32* %8, align 4
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %267, label %283

267:                                              ; preds = %261
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 4
  %270 = load i64*, i64** %269, align 8
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %9, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i64, i64* %270, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = load i64*, i64** %10, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 0
  store i64 %275, i64* %277, align 8
  br label %278

278:                                              ; preds = %267
  %279 = load i32, i32* %8, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %8, align 4
  %281 = load i64*, i64** %10, align 8
  %282 = getelementptr inbounds i64, i64* %281, i32 1
  store i64* %282, i64** %10, align 8
  br label %261

283:                                              ; preds = %261
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = load i64*, i64** %11, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i64, i64* %289, i64 %290
  store i64* %291, i64** %11, align 8
  br label %292

292:                                              ; preds = %283
  %293 = load i32, i32* %7, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %7, align 4
  br label %253

295:                                              ; preds = %253
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %298 = call i32 @ff_filter_frame(%struct.TYPE_17__* %296, %struct.TYPE_16__* %297)
  store i32 %298, i32* %3, align 4
  br label %400

299:                                              ; preds = %118
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load i64**, i64*** %301, align 8
  %303 = getelementptr inbounds i64*, i64** %302, i64 0
  %304 = load i64*, i64** %303, align 8
  store i64* %304, i64** %11, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %305

305:                                              ; preds = %387, %299
  %306 = load i32, i32* %7, align 4
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp slt i32 %306, %309
  br i1 %310, label %311, label %390

311:                                              ; preds = %305
  %312 = load i64*, i64** %11, align 8
  store i64* %312, i64** %10, align 8
  store i32 0, i32* %8, align 4
  br label %313

313:                                              ; preds = %375, %311
  %314 = load i32, i32* %8, align 4
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp slt i32 %314, %317
  br i1 %318, label %319, label %378

319:                                              ; preds = %313
  %320 = load i32, i32* @NB_COMPONENTS, align 4
  %321 = sext i32 %320 to i64
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 4
  %324 = load i64*, i64** %323, align 8
  %325 = load i32, i32* %9, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %9, align 4
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i64, i64* %324, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = mul i64 %321, %329
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %18, align 4
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %18, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  %340 = load i64*, i64** %10, align 8
  %341 = load i64, i64* %12, align 8
  %342 = getelementptr inbounds i64, i64* %340, i64 %341
  store i64 %339, i64* %342, align 8
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 2
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %18, align 4
  %347 = add nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = load i64*, i64** %10, align 8
  %353 = load i64, i64* %13, align 8
  %354 = getelementptr inbounds i64, i64* %352, i64 %353
  store i64 %351, i64* %354, align 8
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 2
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* %18, align 4
  %359 = add nsw i32 %358, 2
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %357, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = load i64*, i64** %10, align 8
  %365 = load i64, i64* %14, align 8
  %366 = getelementptr inbounds i64, i64* %364, i64 %365
  store i64 %363, i64* %366, align 8
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 5
  %369 = load %struct.TYPE_13__*, %struct.TYPE_13__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load i64*, i64** %10, align 8
  %373 = sext i32 %371 to i64
  %374 = getelementptr inbounds i64, i64* %372, i64 %373
  store i64* %374, i64** %10, align 8
  br label %375

375:                                              ; preds = %319
  %376 = load i32, i32* %8, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %8, align 4
  br label %313

378:                                              ; preds = %313
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  %383 = load i32, i32* %382, align 4
  %384 = load i64*, i64** %11, align 8
  %385 = sext i32 %383 to i64
  %386 = getelementptr inbounds i64, i64* %384, i64 %385
  store i64* %386, i64** %11, align 8
  br label %387

387:                                              ; preds = %378
  %388 = load i32, i32* %7, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %7, align 4
  br label %305

390:                                              ; preds = %305
  %391 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 2
  %393 = load %struct.TYPE_14__*, %struct.TYPE_14__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %395, i64 0
  %397 = load %struct.TYPE_17__*, %struct.TYPE_17__** %396, align 8
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %399 = call i32 @ff_filter_frame(%struct.TYPE_17__* %397, %struct.TYPE_16__* %398)
  store i32 %399, i32* %3, align 4
  br label %400

400:                                              ; preds = %390, %295, %185
  %401 = load i32, i32* %3, align 4
  ret i32 %401
}

declare dso_local i32 @avpriv_init_elbg(i64*, i32, i32, i32*, i32, i32, i64*, i32*) #1

declare dso_local i32 @avpriv_do_elbg(i64*, i32, i32, i32*, i32, i32, i64*, i32*) #1

declare dso_local %struct.TYPE_16__* @ff_get_video_buffer(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_16__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
