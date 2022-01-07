; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_dctdnoiz.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_dctdnoiz.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__*, %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32**, i32 (i32**, i32, i32*, i32, i32, i32)*, i32, i32 (i32*, i32, i32**, i32, i32, i32)* }
%struct.TYPE_22__ = type { i32*, i32** }

@ENOMEM = common dso_local global i32 0, align 4
@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_20__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %6, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %7, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %34, i64 0
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  store %struct.TYPE_23__* %36, %struct.TYPE_23__** %8, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = call i64 @av_frame_is_writable(%struct.TYPE_22__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %11, align 8
  br label %61

42:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__* %43, i32 %46, i32 %49)
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %11, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %52 = icmp ne %struct.TYPE_22__* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %42
  %54 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %281

57:                                               ; preds = %42
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = call i32 @av_frame_copy_props(%struct.TYPE_22__* %58, %struct.TYPE_22__* %59)
  br label %61

61:                                               ; preds = %57, %40
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 6
  %64 = load i32 (i32*, i32, i32**, i32, i32, i32)*, i32 (i32*, i32, i32**, i32, i32, i32)** %63, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 3
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 %64(i32* %69, i32 %72, i32** %75, i32 %80, i32 %83, i32 %86)
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %123, %61
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 3
  br i1 %90, label %91, label %126

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %92, align 4
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 3
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %102, align 4
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)*, i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)** %115, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %118 = load i32, i32* @filter_slice, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = call i32 %116(%struct.TYPE_24__* %117, i32 %118, %struct.TYPE_20__* %12, i32* null, i32 %121)
  br label %123

123:                                              ; preds = %91
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %88

126:                                              ; preds = %88
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 4
  %129 = load i32 (i32**, i32, i32*, i32, i32, i32)*, i32 (i32**, i32, i32*, i32, i32, i32)** %128, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load i32**, i32*** %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 3
  %140 = load i32**, i32*** %139, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 %129(i32** %132, i32 %137, i32* %142, i32 %145, i32 %148, i32 %151)
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %277, label %155

155:                                              ; preds = %126
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 1
  %158 = load i32**, i32*** %157, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 0
  %160 = load i32*, i32** %159, align 8
  store i32* %160, i32** %14, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = load i32**, i32*** %162, align 8
  %164 = getelementptr inbounds i32*, i32** %163, i64 0
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %15, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %16, align 4
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %17, align 4
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %178, %181
  %183 = mul nsw i32 %182, 3
  store i32 %183, i32* %18, align 4
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %186, %189
  store i32 %190, i32* %19, align 4
  %191 = load i32, i32* %18, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %231

193:                                              ; preds = %155
  %194 = load i32*, i32** %14, align 8
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = mul nsw i32 %197, 3
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %194, i64 %199
  store i32* %200, i32** %20, align 8
  %201 = load i32*, i32** %15, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = mul nsw i32 %204, 3
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %201, i64 %206
  store i32* %207, i32** %21, align 8
  store i32 0, i32* %13, align 4
  br label %208

208:                                              ; preds = %227, %193
  %209 = load i32, i32* %13, align 4
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %230

214:                                              ; preds = %208
  %215 = load i32*, i32** %20, align 8
  %216 = load i32*, i32** %21, align 8
  %217 = load i32, i32* %18, align 4
  %218 = call i32 @memcpy(i32* %215, i32* %216, i32 %217)
  %219 = load i32, i32* %16, align 4
  %220 = load i32*, i32** %20, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32* %222, i32** %20, align 8
  %223 = load i32, i32* %17, align 4
  %224 = load i32*, i32** %21, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32* %226, i32** %21, align 8
  br label %227

227:                                              ; preds = %214
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %13, align 4
  br label %208

230:                                              ; preds = %208
  br label %231

231:                                              ; preds = %230, %155
  %232 = load i32, i32* %19, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %275

234:                                              ; preds = %231
  %235 = load i32*, i32** %14, align 8
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %16, align 4
  %240 = mul nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %235, i64 %241
  store i32* %242, i32** %22, align 8
  %243 = load i32*, i32** %15, align 8
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %17, align 4
  %248 = mul nsw i32 %246, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %243, i64 %249
  store i32* %250, i32** %23, align 8
  store i32 0, i32* %13, align 4
  br label %251

251:                                              ; preds = %271, %234
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* %19, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %274

255:                                              ; preds = %251
  %256 = load i32*, i32** %22, align 8
  %257 = load i32*, i32** %23, align 8
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = mul nsw i32 %260, 3
  %262 = call i32 @memcpy(i32* %256, i32* %257, i32 %261)
  %263 = load i32, i32* %16, align 4
  %264 = load i32*, i32** %22, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  store i32* %266, i32** %22, align 8
  %267 = load i32, i32* %17, align 4
  %268 = load i32*, i32** %23, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %23, align 8
  br label %271

271:                                              ; preds = %255
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %13, align 4
  br label %251

274:                                              ; preds = %251
  br label %275

275:                                              ; preds = %274, %231
  %276 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  br label %277

277:                                              ; preds = %275, %126
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %280 = call i32 @ff_filter_frame(%struct.TYPE_23__* %278, %struct.TYPE_22__* %279)
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %277, %53
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
