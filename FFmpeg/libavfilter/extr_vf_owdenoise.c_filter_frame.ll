; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i32, i32 }
%struct.TYPE_17__ = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %7, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %20, i64 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %8, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @AV_CEIL_RSHIFT(i32 %25, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @AV_CEIL_RSHIFT(i32 %32, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = call i64 @av_frame_is_writable(%struct.TYPE_17__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %139

40:                                               ; preds = %2
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %9, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %40
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @filter(%struct.TYPE_16__* %47, i32 %52, i32 %57, i32 %62, i32 %67, i32 %70, i32 %73, i64 %76)
  br label %78

78:                                               ; preds = %46, %40
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %138

83:                                               ; preds = %78
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @filter(%struct.TYPE_16__* %84, i32 %89, i32 %94, i32 %99, i32 %104, i32 %105, i32 %106, i64 %109)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @filter(%struct.TYPE_16__* %111, i32 %116, i32 %121, i32 %126, i32 %131, i32 %132, i32 %133, i64 %136)
  br label %138

138:                                              ; preds = %83, %78
  br label %374

139:                                              ; preds = %2
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call %struct.TYPE_17__* @ff_get_video_buffer(%struct.TYPE_18__* %140, i32 %143, i32 %146)
  store %struct.TYPE_17__* %147, %struct.TYPE_17__** %9, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %149 = icmp ne %struct.TYPE_17__* %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %139
  %151 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = call i32 @AVERROR(i32 %152)
  store i32 %153, i32* %3, align 4
  br label %378

154:                                              ; preds = %139
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %157 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %155, %struct.TYPE_17__* %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %194

162:                                              ; preds = %154
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @filter(%struct.TYPE_16__* %163, i32 %168, i32 %173, i32 %178, i32 %183, i32 %186, i32 %189, i64 %192)
  br label %222

194:                                              ; preds = %154
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @av_image_copy_plane(i32 %199, i32 %204, i32 %209, i32 %214, i32 %217, i32 %220)
  br label %222

222:                                              ; preds = %194, %162
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp sgt i64 %225, 0
  br i1 %226, label %227, label %282

227:                                              ; preds = %222
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %11, align 4
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @filter(%struct.TYPE_16__* %228, i32 %233, i32 %238, i32 %243, i32 %248, i32 %249, i32 %250, i64 %253)
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 2
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 2
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %11, align 4
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @filter(%struct.TYPE_16__* %255, i32 %260, i32 %265, i32 %270, i32 %275, i32 %276, i32 %277, i64 %280)
  br label %337

282:                                              ; preds = %222
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @av_image_copy_plane(i32 %287, i32 %292, i32 %297, i32 %302, i32 %305, i32 %308)
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 2
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 2
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 2
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @av_image_copy_plane(i32 %314, i32 %319, i32 %324, i32 %329, i32 %332, i32 %335)
  br label %337

337:                                              ; preds = %282, %227
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 1
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 3
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %372

344:                                              ; preds = %337
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 3
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 3
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 1
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 3
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 0
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 3
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @av_image_copy_plane(i32 %349, i32 %354, i32 %359, i32 %364, i32 %367, i32 %370)
  br label %372

372:                                              ; preds = %344, %337
  %373 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  br label %374

374:                                              ; preds = %372, %138
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %377 = call i32 @ff_filter_frame(%struct.TYPE_18__* %375, %struct.TYPE_17__* %376)
  store i32 %377, i32* %3, align 4
  br label %378

378:                                              ; preds = %374, %150
  %379 = load i32, i32* %3, align 4
  ret i32 %379
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_17__*) #1

declare dso_local i32 @filter(%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local %struct.TYPE_17__* @ff_get_video_buffer(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_image_copy_plane(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
