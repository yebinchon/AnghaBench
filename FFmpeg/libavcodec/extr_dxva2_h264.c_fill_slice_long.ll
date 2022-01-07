; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_h264.c_fill_slice_long.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_h264.c_fill_slice_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64, %struct.TYPE_22__, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_25__ = type { i32, i32, i32*, i32, i32, i64, i32, i32, i32, i32, i64, %struct.TYPE_24__, %struct.TYPE_23__**, i64, i32, i64 }
%struct.TYPE_24__ = type { i32, i32, i32***, i32****, i64*, i64* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32****, i32, i64, i32, i32, i32, i64, i64, %struct.TYPE_20__**, i64, i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i32 }

@FF_DXVA2_WORKAROUND_INTEL_CLEARVIDEO = common dso_local global i32 0, align 4
@PICT_BOTTOM_FIELD = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_28__*, i32*, i32, i32)* @fill_slice_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_slice_long(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %24, %struct.TYPE_27__** %11, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i64 0
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %12, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %30 = call i32* @DXVA_CONTEXT(%struct.TYPE_29__* %29)
  store i32* %30, i32** %13, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %32 = call i32 @memset(%struct.TYPE_28__* %31, i32 0, i32 144)
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 22
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %45 = call i32 @FIELD_OR_MBAFF_PICTURE(%struct.TYPE_27__* %44)
  %46 = ashr i32 %43, %45
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 15
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 21
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 20
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 14
  %62 = call i64 @get_bits_count(i32* %61)
  %63 = sub nsw i64 %62, 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 19
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %67 = call i32 @ff_h264_get_slice_type(%struct.TYPE_25__* %66)
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 13
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %5
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 5
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %74, %5
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 11
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 11
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %79
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = sub i32 %101, 1
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %96, %79
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = sub i32 %115, 1
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %110, %105
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 %122, 2
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %128, 2
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 18
  store i64 0, i64* %133, align 8
  store i32 0, i32* %14, align 4
  br label %134

134:                                              ; preds = %438, %119
  %135 = load i32, i32* %14, align 4
  %136 = icmp ult i32 %135, 2
  br i1 %136, label %137, label %441

137:                                              ; preds = %134
  store i32 0, i32* %15, align 4
  br label %138

138:                                              ; preds = %434, %137
  %139 = load i32, i32* %15, align 4
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 17
  %142 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %142, i64 %144
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_20__* %146)
  %148 = icmp ult i32 %139, %147
  br i1 %148, label %149, label %437

149:                                              ; preds = %138
  %150 = load i32, i32* %14, align 4
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ult i32 %150, %153
  br i1 %154, label %155, label %381

155:                                              ; preds = %149
  %156 = load i32, i32* %15, align 4
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ult i32 %156, %163
  br i1 %164, label %165, label %381

165:                                              ; preds = %155
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 12
  %168 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %168, i64 %170
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %176, align 8
  store %struct.TYPE_26__* %177, %struct.TYPE_26__** %16, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @DXVA_CONTEXT_WORKAROUND(%struct.TYPE_29__* %178, i32* %179)
  %181 = load i32, i32* @FF_DXVA2_WORKAROUND_INTEL_CLEARVIDEO, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %165
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %186 = load i32*, i32** %13, align 8
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ff_dxva2_get_surface_index(%struct.TYPE_29__* %185, i32* %186, i32 %189)
  store i32 %190, i32* %18, align 4
  br label %200

191:                                              ; preds = %165
  %192 = load i32*, i32** %8, align 8
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %194 = load i32*, i32** %13, align 8
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ff_dxva2_get_surface_index(%struct.TYPE_29__* %193, i32* %194, i32 %197)
  %199 = call i32 @get_refpic_index(i32* %192, i32 %198)
  store i32 %199, i32* %18, align 4
  br label %200

200:                                              ; preds = %191, %184
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 17
  %203 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %203, i64 %205
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i64 %209
  %211 = load i32, i32* %18, align 4
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 12
  %214 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %214, i64 %216
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %217, align 8
  %219 = load i32, i32* %15, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @PICT_BOTTOM_FIELD, align 8
  %225 = icmp eq i64 %223, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 @fill_picture_entry(%struct.TYPE_20__* %210, i32 %211, i32 %226)
  store i32 0, i32* %17, align 4
  br label %228

228:                                              ; preds = %377, %200
  %229 = load i32, i32* %17, align 4
  %230 = icmp ult i32 %229, 3
  br i1 %230, label %231, label %380

231:                                              ; preds = %228
  %232 = load i32, i32* %17, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %273

234:                                              ; preds = %231
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 11
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 5
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %14, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %273

244:                                              ; preds = %234
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 11
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 2
  %248 = load i32***, i32**** %247, align 8
  %249 = load i32, i32* %15, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i32**, i32*** %248, i64 %250
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %14, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %19, align 4
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 11
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 2
  %262 = load i32***, i32**** %261, align 8
  %263 = load i32, i32* %15, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i32**, i32*** %262, i64 %264
  %266 = load i32**, i32*** %265, align 8
  %267 = load i32, i32* %14, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %20, align 4
  br label %342

273:                                              ; preds = %234, %231
  %274 = load i32, i32* %17, align 4
  %275 = icmp uge i32 %274, 1
  br i1 %275, label %276, label %325

276:                                              ; preds = %273
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 11
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 4
  %280 = load i64*, i64** %279, align 8
  %281 = load i32, i32* %14, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i64, i64* %280, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %325

286:                                              ; preds = %276
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 11
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 3
  %290 = load i32****, i32***** %289, align 8
  %291 = load i32, i32* %15, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i32***, i32**** %290, i64 %292
  %294 = load i32***, i32**** %293, align 8
  %295 = load i32, i32* %14, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32**, i32*** %294, i64 %296
  %298 = load i32**, i32*** %297, align 8
  %299 = load i32, i32* %17, align 4
  %300 = sub i32 %299, 1
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32*, i32** %298, i64 %301
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %19, align 4
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %306, i32 0, i32 11
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 3
  %309 = load i32****, i32***** %308, align 8
  %310 = load i32, i32* %15, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i32***, i32**** %309, i64 %311
  %313 = load i32***, i32**** %312, align 8
  %314 = load i32, i32* %14, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i32**, i32*** %313, i64 %315
  %317 = load i32**, i32*** %316, align 8
  %318 = load i32, i32* %17, align 4
  %319 = sub i32 %318, 1
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i32*, i32** %317, i64 %320
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 1
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %20, align 4
  br label %341

325:                                              ; preds = %276, %273
  %326 = load i32, i32* %17, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %325
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 11
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  br label %338

333:                                              ; preds = %325
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 11
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  br label %338

338:                                              ; preds = %333, %328
  %339 = phi i32 [ %332, %328 ], [ %337, %333 ]
  %340 = shl i32 1, %339
  store i32 %340, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %341

341:                                              ; preds = %338, %286
  br label %342

342:                                              ; preds = %341, %244
  %343 = load i32, i32* %19, align 4
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 9
  %346 = load i32****, i32***** %345, align 8
  %347 = load i32, i32* %14, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i32***, i32**** %346, i64 %348
  %350 = load i32***, i32**** %349, align 8
  %351 = load i32, i32* %15, align 4
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds i32**, i32*** %350, i64 %352
  %354 = load i32**, i32*** %353, align 8
  %355 = load i32, i32* %17, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds i32*, i32** %354, i64 %356
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  store i32 %343, i32* %359, align 4
  %360 = load i32, i32* %20, align 4
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 9
  %363 = load i32****, i32***** %362, align 8
  %364 = load i32, i32* %14, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds i32***, i32**** %363, i64 %365
  %367 = load i32***, i32**** %366, align 8
  %368 = load i32, i32* %15, align 4
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds i32**, i32*** %367, i64 %369
  %371 = load i32**, i32*** %370, align 8
  %372 = load i32, i32* %17, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds i32*, i32** %371, i64 %373
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 1
  store i32 %360, i32* %376, align 4
  br label %377

377:                                              ; preds = %342
  %378 = load i32, i32* %17, align 4
  %379 = add i32 %378, 1
  store i32 %379, i32* %17, align 4
  br label %228

380:                                              ; preds = %228
  br label %433

381:                                              ; preds = %155, %149
  %382 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %382, i32 0, i32 17
  %384 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %383, align 8
  %385 = load i32, i32* %14, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %384, i64 %386
  %388 = load %struct.TYPE_20__*, %struct.TYPE_20__** %387, align 8
  %389 = load i32, i32* %15, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %391, i32 0, i32 0
  store i32 255, i32* %392, align 4
  store i32 0, i32* %21, align 4
  br label %393

393:                                              ; preds = %429, %381
  %394 = load i32, i32* %21, align 4
  %395 = icmp ult i32 %394, 3
  br i1 %395, label %396, label %432

396:                                              ; preds = %393
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 9
  %399 = load i32****, i32***** %398, align 8
  %400 = load i32, i32* %14, align 4
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds i32***, i32**** %399, i64 %401
  %403 = load i32***, i32**** %402, align 8
  %404 = load i32, i32* %15, align 4
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds i32**, i32*** %403, i64 %405
  %407 = load i32**, i32*** %406, align 8
  %408 = load i32, i32* %21, align 4
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds i32*, i32** %407, i64 %409
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 0
  store i32 0, i32* %412, align 4
  %413 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %413, i32 0, i32 9
  %415 = load i32****, i32***** %414, align 8
  %416 = load i32, i32* %14, align 4
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds i32***, i32**** %415, i64 %417
  %419 = load i32***, i32**** %418, align 8
  %420 = load i32, i32* %15, align 4
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds i32**, i32*** %419, i64 %421
  %423 = load i32**, i32*** %422, align 8
  %424 = load i32, i32* %21, align 4
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds i32*, i32** %423, i64 %425
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 1
  store i32 0, i32* %428, align 4
  br label %429

429:                                              ; preds = %396
  %430 = load i32, i32* %21, align 4
  %431 = add i32 %430, 1
  store i32 %431, i32* %21, align 4
  br label %393

432:                                              ; preds = %393
  br label %433

433:                                              ; preds = %432, %380
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %15, align 4
  %436 = add i32 %435, 1
  store i32 %436, i32* %15, align 4
  br label %138

437:                                              ; preds = %138
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %14, align 4
  %440 = add i32 %439, 1
  store i32 %440, i32* %14, align 4
  br label %134

441:                                              ; preds = %134
  %442 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %442, i32 0, i32 16
  store i64 0, i64* %443, align 8
  %444 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %444, i32 0, i32 10
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %448 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %447, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = sub nsw i64 %446, %452
  %454 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %454, i32 0, i32 15
  store i64 %453, i64* %455, align 8
  %456 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %457 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %456, i32 0, i32 9
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %460 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %459, i32 0, i32 14
  store i32 %458, i32* %460, align 8
  %461 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %462 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %461, i32 0, i32 5
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %472

466:                                              ; preds = %441
  %467 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %468 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %467, i32 0, i32 8
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %471 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %470, i32 0, i32 13
  store i32 %469, i32* %471, align 4
  br label %472

472:                                              ; preds = %466, %441
  %473 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %474 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %473, i32 0, i32 2
  %475 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %474, i32 0, i32 0
  %476 = load %struct.TYPE_21__*, %struct.TYPE_21__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %484

480:                                              ; preds = %472
  %481 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %482 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %481, i32 0, i32 7
  %483 = load i32, i32* %482, align 4
  br label %485

484:                                              ; preds = %472
  br label %485

485:                                              ; preds = %484, %480
  %486 = phi i32 [ %483, %480 ], [ 0, %484 ]
  %487 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %488 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %487, i32 0, i32 12
  store i32 %486, i32* %488, align 8
  %489 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %490 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %489, i32 0, i32 6
  %491 = load i32, i32* %490, align 8
  %492 = icmp slt i32 %491, 2
  br i1 %492, label %493, label %500

493:                                              ; preds = %485
  %494 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %495 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %494, i32 0, i32 6
  %496 = load i32, i32* %495, align 8
  %497 = sub nsw i32 1, %496
  %498 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %498, i32 0, i32 10
  store i32 %497, i32* %499, align 8
  br label %506

500:                                              ; preds = %485
  %501 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %502 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %501, i32 0, i32 6
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %505 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %504, i32 0, i32 10
  store i32 %503, i32* %505, align 8
  br label %506

506:                                              ; preds = %500, %493
  %507 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %508 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %507, i32 0, i32 1
  %509 = load i64, i64* %508, align 8
  %510 = sub nsw i64 %509, 1
  %511 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %511, i32 0, i32 11
  store i64 %510, i64* %512, align 8
  ret void
}

declare dso_local i32* @DXVA_CONTEXT(%struct.TYPE_29__*) #1

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @FIELD_OR_MBAFF_PICTURE(%struct.TYPE_27__*) #1

declare dso_local i64 @get_bits_count(i32*) #1

declare dso_local i32 @ff_h264_get_slice_type(%struct.TYPE_25__*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_20__*) #1

declare dso_local i32 @DXVA_CONTEXT_WORKAROUND(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @ff_dxva2_get_surface_index(%struct.TYPE_29__*, i32*, i32) #1

declare dso_local i32 @get_refpic_index(i32*, i32) #1

declare dso_local i32 @fill_picture_entry(%struct.TYPE_20__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
