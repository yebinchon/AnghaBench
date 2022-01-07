; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_tile_codeblocks.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_tile_codeblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_34__*, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i32, i32, i64 }
%struct.TYPE_33__ = type { i64, i64, i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32, i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64**, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32** }
%struct.TYPE_29__ = type { i32 }

@FF_DWT97 = common dso_local global i64 0, align 8
@FF_DWT97_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_32__*, %struct.TYPE_28__*)* @tile_codeblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tile_codeblocks(%struct.TYPE_32__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_29__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_36__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_31__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_35__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %295, %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %298

29:                                               ; preds = %23
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %32, i64 %34
  store %struct.TYPE_33__* %35, %struct.TYPE_33__** %9, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i64 %40
  store %struct.TYPE_34__* %41, %struct.TYPE_34__** %10, align 8
  store i32 0, i32* %11, align 4
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 1, %44
  %46 = add nsw i32 %45, 2
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %5, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %267, %29
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %270

54:                                               ; preds = %48
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %57, i64 %59
  store %struct.TYPE_30__* %60, %struct.TYPE_30__** %12, align 8
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %263, %54
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %266

67:                                               ; preds = %61
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %70, i64 %72
  store %struct.TYPE_36__* %73, %struct.TYPE_36__** %15, align 8
  store i32 0, i32* %16, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %17, align 4
  %79 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %79, i32 0, i32 0
  %81 = load i64**, i64*** %80, align 8
  %82 = getelementptr inbounds i64*, i64** %81, i64 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 0
  %88 = load i64**, i64*** %87, align 8
  %89 = getelementptr inbounds i64*, i64** %88, i64 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %85, %92
  br i1 %93, label %110, label %94

94:                                               ; preds = %67
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 0
  %97 = load i64**, i64*** %96, align 8
  %98 = getelementptr inbounds i64*, i64** %97, i64 1
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 0
  %104 = load i64**, i64*** %103, align 8
  %105 = getelementptr inbounds i64*, i64** %104, i64 1
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %101, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %94, %67
  br label %263

111:                                              ; preds = %94
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  store i32 %118, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %259, %111
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %262

123:                                              ; preds = %119
  %124 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i64 %128
  store %struct.TYPE_31__* %129, %struct.TYPE_31__** %18, align 8
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %255, %123
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %134, %137
  %139 = icmp slt i32 %131, %138
  br i1 %139, label %140, label %258

140:                                              ; preds = %130
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_35__*, %struct.TYPE_35__** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %143, i64 %145
  store %struct.TYPE_35__* %146, %struct.TYPE_35__** %21, align 8
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %150 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %151 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %150, i32 0, i32 0
  %152 = load i32**, i32*** %151, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 0
  %159 = load i32**, i32*** %158, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %156, %163
  %165 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %173 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %172, i32 0, i32 0
  %174 = load i32**, i32*** %173, align 8
  %175 = getelementptr inbounds i32*, i32** %174, i64 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %171, %178
  %180 = load i32, i32* %17, align 4
  %181 = call i32 @decode_cblk(%struct.TYPE_32__* %147, %struct.TYPE_34__* %148, %struct.TYPE_29__* %5, %struct.TYPE_35__* %149, i32 %164, i32 %179, i32 %180)
  store i32 %181, i32* %22, align 4
  %182 = load i32, i32* %22, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %140
  store i32 1, i32* %11, align 4
  br label %186

185:                                              ; preds = %140
  br label %255

186:                                              ; preds = %184
  %187 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %188 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %187, i32 0, i32 0
  %189 = load i32**, i32*** %188, align 8
  %190 = getelementptr inbounds i32*, i32** %189, i64 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %195, i32 0, i32 0
  %197 = load i64**, i64*** %196, align 8
  %198 = getelementptr inbounds i64*, i64** %197, i64 0
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %194, %201
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %19, align 4
  %204 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %205 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %204, i32 0, i32 0
  %206 = load i32**, i32*** %205, align 8
  %207 = getelementptr inbounds i32*, i32** %206, i64 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %212, i32 0, i32 0
  %214 = load i64**, i64*** %213, align 8
  %215 = getelementptr inbounds i64*, i64** %214, i64 1
  %216 = load i64*, i64** %215, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 0
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %211, %218
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %20, align 4
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @FF_DWT97, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %186
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %20, align 4
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %232 = call i32 @dequantization_float(i32 %227, i32 %228, %struct.TYPE_35__* %229, %struct.TYPE_33__* %230, %struct.TYPE_29__* %5, %struct.TYPE_36__* %231)
  br label %254

233:                                              ; preds = %186
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @FF_DWT97_INT, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %233
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* %20, align 4
  %242 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %244 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %245 = call i32 @dequantization_int_97(i32 %240, i32 %241, %struct.TYPE_35__* %242, %struct.TYPE_33__* %243, %struct.TYPE_29__* %5, %struct.TYPE_36__* %244)
  br label %253

246:                                              ; preds = %233
  %247 = load i32, i32* %19, align 4
  %248 = load i32, i32* %20, align 4
  %249 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %251 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %252 = call i32 @dequantization_int(i32 %247, i32 %248, %struct.TYPE_35__* %249, %struct.TYPE_33__* %250, %struct.TYPE_29__* %5, %struct.TYPE_36__* %251)
  br label %253

253:                                              ; preds = %246, %239
  br label %254

254:                                              ; preds = %253, %226
  br label %255

255:                                              ; preds = %254, %185
  %256 = load i32, i32* %16, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %16, align 4
  br label %130

258:                                              ; preds = %130
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %14, align 4
  br label %119

262:                                              ; preds = %119
  br label %263

263:                                              ; preds = %262, %110
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %61

266:                                              ; preds = %61
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %7, align 4
  br label %48

270:                                              ; preds = %48
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %294

273:                                              ; preds = %270
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @FF_DWT97, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %273
  %282 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to i8*
  br label %291

286:                                              ; preds = %273
  %287 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = inttoptr i64 %289 to i8*
  br label %291

291:                                              ; preds = %286, %281
  %292 = phi i8* [ %285, %281 ], [ %290, %286 ]
  %293 = call i32 @ff_dwt_decode(i32* %275, i8* %292)
  br label %294

294:                                              ; preds = %291, %270
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %6, align 4
  br label %23

298:                                              ; preds = %23
  ret void
}

declare dso_local i32 @decode_cblk(%struct.TYPE_32__*, %struct.TYPE_34__*, %struct.TYPE_29__*, %struct.TYPE_35__*, i32, i32, i32) #1

declare dso_local i32 @dequantization_float(i32, i32, %struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_29__*, %struct.TYPE_36__*) #1

declare dso_local i32 @dequantization_int_97(i32, i32, %struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_29__*, %struct.TYPE_36__*) #1

declare dso_local i32 @dequantization_int(i32, i32, %struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_29__*, %struct.TYPE_36__*) #1

declare dso_local i32 @ff_dwt_decode(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
