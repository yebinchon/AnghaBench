; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deband.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deband.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { float, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i64, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@deband_16_coupling_c = common dso_local global i32 0, align 4
@deband_8_coupling_c = common dso_local global i32 0, align 4
@deband_16_c = common dso_local global i32 0, align 4
@deband_8_c = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_10__* @av_pix_fmt_desc_get(i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %5, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load float, float* %25, align 8
  store float %26, float* %7, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @AV_CEIL_RSHIFT(i32 %37, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %42, i32* %50, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 %53, i32* %57, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %53, i32* %61, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @AV_CEIL_RSHIFT(i32 %64, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %69, i32* %77, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 %80, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %80, i32* %88, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 10
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 10
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 8
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* @deband_16_coupling_c, align 4
  br label %119

117:                                              ; preds = %107
  %118 = load i32, i32* @deband_8_coupling_c, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 8
  store i32 %120, i32* %122, align 8
  br label %139

123:                                              ; preds = %1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 8
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @deband_16_c, align 4
  br label %135

133:                                              ; preds = %123
  %134 = load i32, i32* @deband_8_c, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 8
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %119
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 1, %145
  %147 = sub nsw i32 %146, 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %147, %152
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %153, i32* %157, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 1, %163
  %165 = sub nsw i32 %164, 1
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %165, %170
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 %171, i32* %175, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i64 2
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 1, %181
  %183 = sub nsw i32 %182, 1
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %183, %188
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  store i32 %189, i32* %193, align 4
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 3
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 1, %199
  %201 = sub nsw i32 %200, 1
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 5
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 3
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %201, %206
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 4
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 3
  store i32 %207, i32* %211, align 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %216, %221
  %223 = sext i32 %222 to i64
  %224 = mul i64 %223, 4
  %225 = trunc i64 %224 to i32
  %226 = call i8* @av_malloc(i32 %225)
  %227 = bitcast i8* %226 to i32*
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 6
  store i32* %227, i32** %229, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %234, %239
  %241 = sext i32 %240 to i64
  %242 = mul i64 %241, 4
  %243 = trunc i64 %242 to i32
  %244 = call i8* @av_malloc(i32 %243)
  %245 = bitcast i8* %244 to i32*
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 7
  store i32* %245, i32** %247, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 6
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %139
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 7
  %255 = load i32*, i32** %254, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %252, %139
  %258 = load i32, i32* @ENOMEM, align 4
  %259 = call i32 @AVERROR(i32 %258)
  store i32 %259, i32* %2, align 4
  br label %351

260:                                              ; preds = %252
  store i32 0, i32* %10, align 4
  br label %261

261:                                              ; preds = %347, %260
  %262 = load i32, i32* %10, align 4
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = icmp slt i32 %262, %267
  br i1 %268, label %269, label %350

269:                                              ; preds = %261
  store i32 0, i32* %9, align 4
  br label %270

270:                                              ; preds = %343, %269
  %271 = load i32, i32* %9, align 4
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp slt i32 %271, %276
  br i1 %277, label %278, label %346

278:                                              ; preds = %270
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call float @frand(i32 %279, i32 %280)
  store float %281, float* %11, align 4
  %282 = load float, float* %7, align 4
  %283 = fcmp olt float %282, 0.000000e+00
  br i1 %283, label %284, label %287

284:                                              ; preds = %278
  %285 = load float, float* %7, align 4
  %286 = fneg float %285
  br label %291

287:                                              ; preds = %278
  %288 = load float, float* %11, align 4
  %289 = load float, float* %7, align 4
  %290 = fmul float %288, %289
  br label %291

291:                                              ; preds = %287, %284
  %292 = phi float [ %286, %284 ], [ %290, %287 ]
  store float %292, float* %12, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %291
  %296 = load i32, i32* %8, align 4
  %297 = sub nsw i32 0, %296
  %298 = sitofp i32 %297 to float
  br label %304

299:                                              ; preds = %291
  %300 = load float, float* %11, align 4
  %301 = load i32, i32* %8, align 4
  %302 = sitofp i32 %301 to float
  %303 = fmul float %300, %302
  br label %304

304:                                              ; preds = %299, %295
  %305 = phi float [ %298, %295 ], [ %303, %299 ]
  %306 = fptosi float %305 to i32
  store i32 %306, i32* %13, align 4
  %307 = load float, float* %12, align 4
  %308 = call i32 @cosf(float %307)
  %309 = load i32, i32* %13, align 4
  %310 = mul nsw i32 %308, %309
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 6
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %10, align 4
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  %319 = load i32, i32* %318, align 4
  %320 = mul nsw i32 %314, %319
  %321 = load i32, i32* %9, align 4
  %322 = add nsw i32 %320, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %313, i64 %323
  store i32 %310, i32* %324, align 4
  %325 = load float, float* %12, align 4
  %326 = call i32 @sinf(float %325)
  %327 = load i32, i32* %13, align 4
  %328 = mul nsw i32 %326, %327
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 7
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %10, align 4
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 3
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 0
  %337 = load i32, i32* %336, align 4
  %338 = mul nsw i32 %332, %337
  %339 = load i32, i32* %9, align 4
  %340 = add nsw i32 %338, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %331, i64 %341
  store i32 %328, i32* %342, align 4
  br label %343

343:                                              ; preds = %304
  %344 = load i32, i32* %9, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %9, align 4
  br label %270

346:                                              ; preds = %270
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %10, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %10, align 4
  br label %261

350:                                              ; preds = %261
  store i32 0, i32* %2, align 4
  br label %351

351:                                              ; preds = %350, %257
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local %struct.TYPE_10__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local float @frand(i32, i32) #1

declare dso_local i32 @cosf(float) #1

declare dso_local i32 @sinf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
