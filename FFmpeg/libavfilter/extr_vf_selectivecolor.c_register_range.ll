; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_selectivecolor.c_register_range.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_selectivecolor.c_register_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float**, i64, i32, %struct.process_range* }
%struct.process_range = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Invalid %s adjustments (%g %g %g %g). Settings must be set in [-1;1] range\0A\00", align 1
@color_names = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@RANGE_REDS = common dso_local global i32 0, align 4
@RANGE_GREENS = common dso_local global i32 0, align 4
@RANGE_BLUES = common dso_local global i32 0, align 4
@get_rgb_scale = common dso_local global i32 0, align 4
@RANGE_CYANS = common dso_local global i32 0, align 4
@RANGE_MAGENTAS = common dso_local global i32 0, align 4
@RANGE_YELLOWS = common dso_local global i32 0, align 4
@get_cmy_scale = common dso_local global i32 0, align 4
@RANGE_WHITES = common dso_local global i32 0, align 4
@get_whites_scale8 = common dso_local global i32 0, align 4
@RANGE_NEUTRALS = common dso_local global i32 0, align 4
@get_neutrals_scale8 = common dso_local global i32 0, align 4
@RANGE_BLACKS = common dso_local global i32 0, align 4
@get_blacks_scale8 = common dso_local global i32 0, align 4
@get_whites_scale16 = common dso_local global i32 0, align 4
@get_neutrals_scale16 = common dso_local global i32 0, align 4
@get_blacks_scale16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @register_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_range(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca %struct.process_range*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load float**, float*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds float*, float** %10, i64 %12
  %14 = load float*, float** %13, align 8
  store float* %14, float** %6, align 8
  %15 = load float*, float** %6, align 8
  %16 = getelementptr inbounds float, float* %15, i64 0
  %17 = load float, float* %16, align 4
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %34, label %19

19:                                               ; preds = %2
  %20 = load float*, float** %6, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %21, align 4
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load float*, float** %6, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  %27 = load float, float* %26, align 4
  %28 = fcmp une float %27, 0.000000e+00
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load float*, float** %6, align 8
  %31 = getelementptr inbounds float, float* %30, i64 3
  %32 = load float, float* %31, align 4
  %33 = fcmp une float %32, 0.000000e+00
  br i1 %33, label %34, label %269

34:                                               ; preds = %29, %24, %19, %2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load %struct.process_range*, %struct.process_range** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds %struct.process_range, %struct.process_range* %37, i64 %42
  store %struct.process_range* %43, %struct.process_range** %7, align 8
  %44 = load float*, float** %6, align 8
  %45 = getelementptr inbounds float, float* %44, i64 0
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = fcmp olt double %47, -1.000000e+00
  br i1 %48, label %91, label %49

49:                                               ; preds = %34
  %50 = load float*, float** %6, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  %52 = load float, float* %51, align 4
  %53 = fpext float %52 to double
  %54 = fcmp ogt double %53, 1.000000e+00
  br i1 %54, label %91, label %55

55:                                               ; preds = %49
  %56 = load float*, float** %6, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  %60 = fcmp olt double %59, -1.000000e+00
  br i1 %60, label %91, label %61

61:                                               ; preds = %55
  %62 = load float*, float** %6, align 8
  %63 = getelementptr inbounds float, float* %62, i64 1
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = fcmp ogt double %65, 1.000000e+00
  br i1 %66, label %91, label %67

67:                                               ; preds = %61
  %68 = load float*, float** %6, align 8
  %69 = getelementptr inbounds float, float* %68, i64 2
  %70 = load float, float* %69, align 4
  %71 = fpext float %70 to double
  %72 = fcmp olt double %71, -1.000000e+00
  br i1 %72, label %91, label %73

73:                                               ; preds = %67
  %74 = load float*, float** %6, align 8
  %75 = getelementptr inbounds float, float* %74, i64 2
  %76 = load float, float* %75, align 4
  %77 = fpext float %76 to double
  %78 = fcmp ogt double %77, 1.000000e+00
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = load float*, float** %6, align 8
  %81 = getelementptr inbounds float, float* %80, i64 3
  %82 = load float, float* %81, align 4
  %83 = fpext float %82 to double
  %84 = fcmp olt double %83, -1.000000e+00
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load float*, float** %6, align 8
  %87 = getelementptr inbounds float, float* %86, i64 3
  %88 = load float, float* %87, align 4
  %89 = fpext float %88 to double
  %90 = fcmp ogt double %89, 1.000000e+00
  br i1 %90, label %91, label %114

91:                                               ; preds = %85, %79, %73, %67, %61, %55, %49, %34
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = load i32*, i32** @color_names, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load float*, float** %6, align 8
  %100 = getelementptr inbounds float, float* %99, i64 0
  %101 = load float, float* %100, align 4
  %102 = load float*, float** %6, align 8
  %103 = getelementptr inbounds float, float* %102, i64 1
  %104 = load float, float* %103, align 4
  %105 = load float*, float** %6, align 8
  %106 = getelementptr inbounds float, float* %105, i64 2
  %107 = load float, float* %106, align 4
  %108 = load float*, float** %6, align 8
  %109 = getelementptr inbounds float, float* %108, i64 3
  %110 = load float, float* %109, align 4
  %111 = call i32 @av_log(%struct.TYPE_4__* %92, i32 %93, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %98, float %101, float %104, float %107, float %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = call i32 @AVERROR(i32 %112)
  store i32 %113, i32* %3, align 4
  br label %270

114:                                              ; preds = %85
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.process_range*, %struct.process_range** %7, align 8
  %117 = getelementptr inbounds %struct.process_range, %struct.process_range* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %5, align 4
  %119 = shl i32 1, %118
  %120 = load %struct.process_range*, %struct.process_range** %7, align 8
  %121 = getelementptr inbounds %struct.process_range, %struct.process_range* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.process_range*, %struct.process_range** %7, align 8
  %123 = getelementptr inbounds %struct.process_range, %struct.process_range* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @RANGE_REDS, align 4
  %126 = shl i32 1, %125
  %127 = load i32, i32* @RANGE_GREENS, align 4
  %128 = shl i32 1, %127
  %129 = or i32 %126, %128
  %130 = load i32, i32* @RANGE_BLUES, align 4
  %131 = shl i32 1, %130
  %132 = or i32 %129, %131
  %133 = and i32 %124, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %114
  %136 = load i32, i32* @get_rgb_scale, align 4
  %137 = load %struct.process_range*, %struct.process_range** %7, align 8
  %138 = getelementptr inbounds %struct.process_range, %struct.process_range* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  br label %268

139:                                              ; preds = %114
  %140 = load %struct.process_range*, %struct.process_range** %7, align 8
  %141 = getelementptr inbounds %struct.process_range, %struct.process_range* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @RANGE_CYANS, align 4
  %144 = shl i32 1, %143
  %145 = load i32, i32* @RANGE_MAGENTAS, align 4
  %146 = shl i32 1, %145
  %147 = or i32 %144, %146
  %148 = load i32, i32* @RANGE_YELLOWS, align 4
  %149 = shl i32 1, %148
  %150 = or i32 %147, %149
  %151 = and i32 %142, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %139
  %154 = load i32, i32* @get_cmy_scale, align 4
  %155 = load %struct.process_range*, %struct.process_range** %7, align 8
  %156 = getelementptr inbounds %struct.process_range, %struct.process_range* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  br label %267

157:                                              ; preds = %139
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %174, label %162

162:                                              ; preds = %157
  %163 = load %struct.process_range*, %struct.process_range** %7, align 8
  %164 = getelementptr inbounds %struct.process_range, %struct.process_range* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @RANGE_WHITES, align 4
  %167 = shl i32 1, %166
  %168 = and i32 %165, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %162
  %171 = load i32, i32* @get_whites_scale8, align 4
  %172 = load %struct.process_range*, %struct.process_range** %7, align 8
  %173 = getelementptr inbounds %struct.process_range, %struct.process_range* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  br label %266

174:                                              ; preds = %162, %157
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %174
  %180 = load %struct.process_range*, %struct.process_range** %7, align 8
  %181 = getelementptr inbounds %struct.process_range, %struct.process_range* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @RANGE_NEUTRALS, align 4
  %184 = shl i32 1, %183
  %185 = and i32 %182, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %179
  %188 = load i32, i32* @get_neutrals_scale8, align 4
  %189 = load %struct.process_range*, %struct.process_range** %7, align 8
  %190 = getelementptr inbounds %struct.process_range, %struct.process_range* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 4
  br label %265

191:                                              ; preds = %179, %174
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %208, label %196

196:                                              ; preds = %191
  %197 = load %struct.process_range*, %struct.process_range** %7, align 8
  %198 = getelementptr inbounds %struct.process_range, %struct.process_range* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @RANGE_BLACKS, align 4
  %201 = shl i32 1, %200
  %202 = and i32 %199, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %196
  %205 = load i32, i32* @get_blacks_scale8, align 4
  %206 = load %struct.process_range*, %struct.process_range** %7, align 8
  %207 = getelementptr inbounds %struct.process_range, %struct.process_range* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 4
  br label %264

208:                                              ; preds = %196, %191
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %208
  %214 = load %struct.process_range*, %struct.process_range** %7, align 8
  %215 = getelementptr inbounds %struct.process_range, %struct.process_range* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @RANGE_WHITES, align 4
  %218 = shl i32 1, %217
  %219 = and i32 %216, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %213
  %222 = load i32, i32* @get_whites_scale16, align 4
  %223 = load %struct.process_range*, %struct.process_range** %7, align 8
  %224 = getelementptr inbounds %struct.process_range, %struct.process_range* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 4
  br label %263

225:                                              ; preds = %213, %208
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %225
  %231 = load %struct.process_range*, %struct.process_range** %7, align 8
  %232 = getelementptr inbounds %struct.process_range, %struct.process_range* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @RANGE_NEUTRALS, align 4
  %235 = shl i32 1, %234
  %236 = and i32 %233, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %230
  %239 = load i32, i32* @get_neutrals_scale16, align 4
  %240 = load %struct.process_range*, %struct.process_range** %7, align 8
  %241 = getelementptr inbounds %struct.process_range, %struct.process_range* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  br label %262

242:                                              ; preds = %230, %225
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %242
  %248 = load %struct.process_range*, %struct.process_range** %7, align 8
  %249 = getelementptr inbounds %struct.process_range, %struct.process_range* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @RANGE_BLACKS, align 4
  %252 = shl i32 1, %251
  %253 = and i32 %250, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %247
  %256 = load i32, i32* @get_blacks_scale16, align 4
  %257 = load %struct.process_range*, %struct.process_range** %7, align 8
  %258 = getelementptr inbounds %struct.process_range, %struct.process_range* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 4
  br label %261

259:                                              ; preds = %247, %242
  %260 = call i32 @av_assert0(i32 0)
  br label %261

261:                                              ; preds = %259, %255
  br label %262

262:                                              ; preds = %261, %238
  br label %263

263:                                              ; preds = %262, %221
  br label %264

264:                                              ; preds = %263, %204
  br label %265

265:                                              ; preds = %264, %187
  br label %266

266:                                              ; preds = %265, %170
  br label %267

267:                                              ; preds = %266, %153
  br label %268

268:                                              ; preds = %267, %135
  br label %269

269:                                              ; preds = %268, %29
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %269, %91
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, i32, float, float, float, float) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
