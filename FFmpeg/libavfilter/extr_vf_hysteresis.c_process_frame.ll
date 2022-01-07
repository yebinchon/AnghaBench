; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hysteresis.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hysteresis.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { i32, i32, i32*, i32*, i32, %struct.TYPE_18__, i32 (%struct.TYPE_19__*, i64, i64, i64, i32, i32, i32, i32, i32)*, i64, i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32*, i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_frame(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %4, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %5, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %21, i64 0
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %6, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 5
  %26 = call i32 @ff_framesync_get_frame(%struct.TYPE_18__* %25, i32 0, %struct.TYPE_21__** %8, i32 0)
  store i32 %26, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 5
  %31 = call i32 @ff_framesync_get_frame(%struct.TYPE_18__* %30, i32 1, %struct.TYPE_21__** %9, i32 0)
  store i32 %31, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %1
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %2, align 4
  br label %284

35:                                               ; preds = %28
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = call %struct.TYPE_21__* @av_frame_clone(%struct.TYPE_21__* %41)
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %7, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = icmp ne %struct.TYPE_21__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %284

48:                                               ; preds = %40
  br label %266

49:                                               ; preds = %35
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__* %50, i32 %53, i32 %56)
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %7, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %59 = icmp ne %struct.TYPE_21__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %284

63:                                               ; preds = %49
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = call i32 @av_frame_copy_props(%struct.TYPE_21__* %64, %struct.TYPE_21__* %65)
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %262, %63
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %265

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 1, %74
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %125, label %81

81:                                               ; preds = %73
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @av_image_copy_plane(i64 %88, i32 %95, i64 %102, i32 %109, i32 %116, i32 %123)
  br label %262

125:                                              ; preds = %73
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %163, %125
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %127, %134
  br i1 %135, label %136, label %166

136:                                              ; preds = %126
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 2
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %144, %151
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %143, %153
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @memset(i64 %154, i32 0, i32 %161)
  br label %163

163:                                              ; preds = %136
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %126

166:                                              ; preds = %126
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 4
  store i32 -1, i32* %169, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 8
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %177, %182
  %184 = call i32 @memset(i64 %172, i32 0, i32 %183)
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 7
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %192, %197
  %199 = mul nsw i32 %198, 4
  %200 = call i32 @memset(i64 %187, i32 0, i32 %199)
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 6
  %203 = load i32 (%struct.TYPE_19__*, i64, i64, i64, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i64, i64, i64, i32, i32, i32, i32, i32)** %202, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 2
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 2
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 2
  %221 = load i64*, i64** %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 %203(%struct.TYPE_19__* %204, i64 %211, i64 %218, i64 %225, i32 %232, i32 %239, i32 %246, i32 %253, i32 %260)
  br label %262

262:                                              ; preds = %167, %81
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %67

265:                                              ; preds = %67
  br label %266

266:                                              ; preds = %265, %48
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @av_rescale_q(i32 %270, i32 %274, i32 %277)
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 8
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %283 = call i32 @ff_filter_frame(%struct.TYPE_22__* %281, %struct.TYPE_21__* %282)
  store i32 %283, i32* %2, align 4
  br label %284

284:                                              ; preds = %266, %60, %45, %33
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local i32 @ff_framesync_get_frame(%struct.TYPE_18__*, i32, %struct.TYPE_21__**, i32) #1

declare dso_local %struct.TYPE_21__* @av_frame_clone(%struct.TYPE_21__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @av_image_copy_plane(i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
