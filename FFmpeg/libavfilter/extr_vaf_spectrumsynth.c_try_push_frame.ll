; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vaf_spectrumsynth.c_try_push_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vaf_spectrumsynth.c_try_push_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32**, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { float, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32, i64, %struct.TYPE_10__** }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_10__ = type { float }
%struct.TYPE_13__ = type { i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @try_push_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_push_frame(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %6, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load float, float* %30, align 8
  store float %31, float* %8, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @synth_window(%struct.TYPE_14__* %32, i32 %33)
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %259, %2
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %262

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to float*
  store float* %51, float** %16, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %18, align 4
  store i32 0, i32* %11, align 4
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %91, %41
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br label %70

70:                                               ; preds = %64, %60
  %71 = phi i1 [ false, %60 ], [ %69, %64 ]
  br i1 %71, label %72, label %96

72:                                               ; preds = %70
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 10
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %75, i64 %77
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load float, float* %83, align 4
  %85 = load float*, float** %16, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  %89 = load float, float* %88, align 4
  %90 = fadd float %89, %84
  store float %90, float* %88, align 4
  br label %91

91:                                               ; preds = %72
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  br label %60

96:                                               ; preds = %70
  br label %97

97:                                               ; preds = %120, %96
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %97
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 10
  %106 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %106, i64 %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load float, float* %114, align 4
  %116 = load float*, float** %16, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  store float %115, float* %119, align 4
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %97

125:                                              ; preds = %97
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 9
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp sge i32 %134, %137
  br i1 %138, label %139, label %258

139:                                              ; preds = %125
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %13, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp eq i32 %150, %154
  br i1 %155, label %156, label %257

156:                                              ; preds = %139
  %157 = load i32*, i32** %7, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call %struct.TYPE_13__* @ff_get_audio_buffer(i32* %157, i32 %160)
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %15, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %163 = icmp ne %struct.TYPE_13__* %162, null
  br i1 %163, label %173, label %164

164:                                              ; preds = %156
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 8
  %167 = call i32 @av_frame_free(i32* %166)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 7
  %170 = call i32 @av_frame_free(i32* %169)
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = call i32 @AVERROR(i32 %171)
  store i32 %172, i32* %3, align 4
  br label %269

173:                                              ; preds = %156
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, %181
  store i32 %185, i32* %183, align 4
  store i32 0, i32* %20, align 4
  br label %186

186:                                              ; preds = %245, %173
  %187 = load i32, i32* %20, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %248

192:                                              ; preds = %186
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to float*
  store float* %200, float** %19, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 6
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to float*
  store float* %210, float** %16, align 8
  store i32 0, i32* %10, align 4
  br label %211

211:                                              ; preds = %229, %192
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %232

217:                                              ; preds = %211
  %218 = load float*, float** %16, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %218, i64 %220
  %222 = load float, float* %221, align 4
  %223 = load float, float* %8, align 4
  %224 = fmul float %222, %223
  %225 = load float*, float** %19, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %225, i64 %227
  store float %224, float* %228, align 4
  br label %229

229:                                              ; preds = %217
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  br label %211

232:                                              ; preds = %211
  %233 = load float*, float** %16, align 8
  %234 = load float*, float** %16, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %234, i64 %238
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = mul nsw i32 %242, 4
  %244 = call i32 @memmove(float* %233, float* %239, i32 %243)
  br label %245

245:                                              ; preds = %232
  %246 = load i32, i32* %20, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %20, align 4
  br label %186

248:                                              ; preds = %186
  %249 = load i32*, i32** %7, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %251 = call i32 @ff_filter_frame(i32* %249, %struct.TYPE_13__* %250)
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = load i32, i32* %12, align 4
  store i32 %255, i32* %3, align 4
  br label %269

256:                                              ; preds = %248
  br label %257

257:                                              ; preds = %256, %139
  br label %258

258:                                              ; preds = %257, %125
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %9, align 4
  br label %35

262:                                              ; preds = %35
  %263 = load i32, i32* %13, align 4
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* %14, align 4
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 4
  store i32 0, i32* %3, align 4
  br label %269

269:                                              ; preds = %262, %254, %164
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @synth_window(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_13__* @ff_get_audio_buffer(i32*, i32) #1

declare dso_local i32 @av_frame_free(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memmove(float*, float*, i32) #1

declare dso_local i32 @ff_filter_frame(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
