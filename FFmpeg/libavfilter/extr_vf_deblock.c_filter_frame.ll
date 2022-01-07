; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deblock.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deblock.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_17__** }
%struct.TYPE_15__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 (i32*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_16__ = type { i32*, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %6, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %23, i64 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %7, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %8, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = call i64 @av_frame_is_writable(%struct.TYPE_16__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %10, align 8
  br label %56

37:                                               ; preds = %2
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_16__* @ff_get_video_buffer(%struct.TYPE_17__* %38, i32 %41, i32 %44)
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %10, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %47 = icmp ne %struct.TYPE_16__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %334

52:                                               ; preds = %37
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = call i32 @av_frame_copy_props(%struct.TYPE_16__* %53, %struct.TYPE_16__* %54)
  br label %56

56:                                               ; preds = %52, %35
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %321, %56
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %324

63:                                               ; preds = %57
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %15, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %16, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  store i32* %93, i32** %17, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = icmp ne %struct.TYPE_16__* %94, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %63
  %98 = load i32*, i32** %17, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %16, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @av_image_copy_plane(i32* %98, i32 %105, i32* %106, i32 %113, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %97, %63
  %122 = load i32, i32* %11, align 4
  %123 = shl i32 1, %122
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %123, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %121
  br label %321

130:                                              ; preds = %121
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %174, %130
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %178

136:                                              ; preds = %132
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 11
  %139 = load i32 (i32*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32, i32, i32, i32)** %138, align 8
  %140 = load i32*, i32** %17, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %140, i64 %146
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @FFMIN(i32 %155, i32 %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = call i32 %139(i32* %147, i32 %154, i32 %157, i32 %160, i32 %163, i32 %166, i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %136
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %12, align 4
  br label %132

178:                                              ; preds = %132
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %13, align 4
  br label %180

180:                                              ; preds = %316, %178
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %320

184:                                              ; preds = %180
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %9, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32*, i32** %17, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %17, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 12
  %199 = load i32 (i32*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32, i32, i32, i32)** %198, align 8
  %200 = load i32*, i32** %17, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @FFMIN(i32 %208, i32 %209)
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 8
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = call i32 %199(i32* %200, i32 %207, i32 %210, i32 %213, i32 %216, i32 %219, i32 %222, i32 %225)
  %227 = load i32, i32* %9, align 4
  store i32 %227, i32* %12, align 4
  br label %228

228:                                              ; preds = %311, %184
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %315

232:                                              ; preds = %228
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 12
  %235 = load i32 (i32*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32, i32, i32, i32)** %234, align 8
  %236 = load i32*, i32** %17, align 8
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = mul nsw i32 %237, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %236, i64 %242
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %12, align 4
  %254 = sub nsw i32 %252, %253
  %255 = call i32 @FFMIN(i32 %251, i32 %254)
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 10
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 9
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 8
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = call i32 %235(i32* %243, i32 %250, i32 %255, i32 %258, i32 %261, i32 %264, i32 %267, i32 %270)
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 11
  %274 = load i32 (i32*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32, i32, i32, i32)** %273, align 8
  %275 = load i32*, i32** %17, align 8
  %276 = load i32, i32* %12, align 4
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = mul nsw i32 %276, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %275, i64 %281
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %13, align 4
  %293 = sub nsw i32 %291, %292
  %294 = call i32 @FFMIN(i32 %290, i32 %293)
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 10
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 7
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = call i32 %274(i32* %282, i32 %289, i32 %294, i32 %297, i32 %300, i32 %303, i32 %306, i32 %309)
  br label %311

311:                                              ; preds = %232
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* %12, align 4
  %314 = add nsw i32 %313, %312
  store i32 %314, i32* %12, align 4
  br label %228

315:                                              ; preds = %228
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %318, %317
  store i32 %319, i32* %13, align 4
  br label %180

320:                                              ; preds = %180
  br label %321

321:                                              ; preds = %320, %129
  %322 = load i32, i32* %11, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %11, align 4
  br label %57

324:                                              ; preds = %57
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %327 = icmp ne %struct.TYPE_16__* %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  %329 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  br label %330

330:                                              ; preds = %328, %324
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %333 = call i32 @ff_filter_frame(%struct.TYPE_17__* %331, %struct.TYPE_16__* %332)
  store i32 %333, i32* %3, align 4
  br label %334

334:                                              ; preds = %330, %48
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ff_get_video_buffer(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_16__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
