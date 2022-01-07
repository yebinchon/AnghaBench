; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_boxblur.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_boxblur.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__**, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32*, i32*, i32, i32 }
%struct.TYPE_20__ = type { i32, i64*, i64* }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %6, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %7, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %28, i64 0
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %8, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @AV_CEIL_RSHIFT(i32 %33, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @AV_CEIL_RSHIFT(i32 %40, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %45, align 4
  %49 = getelementptr inbounds i32, i32* %45, i64 1
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds i32, i32* %49, i64 1
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds i32, i32* %51, i64 1
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %53, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %57, align 4
  %61 = getelementptr inbounds i32, i32* %57, i64 1
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds i32, i32* %61, i64 1
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds i32, i32* %63, i64 1
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %65, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_19__* @av_pix_fmt_desc_get(i32 %71)
  store %struct.TYPE_19__* %72, %struct.TYPE_19__** %15, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 7
  %81 = sdiv i32 %80, 8
  store i32 %81, i32* %17, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.TYPE_20__* @ff_get_video_buffer(%struct.TYPE_21__* %82, i32 %85, i32 %88)
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %9, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %91 = icmp ne %struct.TYPE_20__* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %2
  %93 = call i32 @av_frame_free(%struct.TYPE_20__** %5)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = call i32 @AVERROR(i32 %94)
  store i32 %95, i32* %3, align 4
  br label %270

96:                                               ; preds = %2
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = call i32 @av_frame_copy_props(%struct.TYPE_20__* %97, %struct.TYPE_20__* %98)
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %179, %96
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %103
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %112, %103, %100
  %122 = phi i1 [ false, %103 ], [ false, %100 ], [ %120, %112 ]
  br i1 %122, label %123, label %182

123:                                              ; preds = %121
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @hblur(i64 %130, i64 %137, i64 %144, i64 %151, i32 %155, i32 %159, i32 %166, i32 %173, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %123
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %100

182:                                              ; preds = %121
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %262, %182
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %184, 4
  br i1 %185, label %186, label %204

186:                                              ; preds = %183
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 2
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %186
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br label %204

204:                                              ; preds = %195, %186, %183
  %205 = phi i1 [ false, %186 ], [ false, %183 ], [ %203, %195 ]
  br i1 %205, label %206, label %265

206:                                              ; preds = %204
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 2
  %209 = load i64*, i64** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 1
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  %230 = load i64*, i64** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %17, align 4
  %261 = call i32 @vblur(i64 %213, i64 %220, i64 %227, i64 %234, i32 %238, i32 %242, i32 %249, i32 %256, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %206
  %263 = load i32, i32* %10, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %10, align 4
  br label %183

265:                                              ; preds = %204
  %266 = call i32 @av_frame_free(%struct.TYPE_20__** %5)
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %269 = call i32 @ff_filter_frame(%struct.TYPE_21__* %267, %struct.TYPE_20__* %268)
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %265, %92
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local %struct.TYPE_19__* @av_pix_fmt_desc_get(i32) #1

declare dso_local %struct.TYPE_20__* @ff_get_video_buffer(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_20__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @hblur(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vblur(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
