; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_haas.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_haas.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_17__** }
%struct.TYPE_15__ = type { double, double, i64, double*, i32, i64, i64*, double, double*, double*, i64 }
%struct.TYPE_16__ = type { i32, i64* }

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
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca double*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca [2 x double], align 16
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %6, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %28, i64 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %7, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %8, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to double*
  store double* %39, double** %9, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  store double %42, double* %10, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  store double %45, double* %11, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %48, 1
  store i64 %49, i64* %12, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  %52 = load double*, double** %51, align 8
  store double* %52, double** %13, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = call i64 @av_frame_is_writable(%struct.TYPE_16__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %2
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %14, align 8
  br label %74

58:                                               ; preds = %2
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__* %59, i32 %62)
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %14, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %65 = icmp ne %struct.TYPE_16__* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %3, align 4
  br label %256

70:                                               ; preds = %58
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = call i32 @av_frame_copy_props(%struct.TYPE_16__* %71, %struct.TYPE_16__* %72)
  br label %74

74:                                               ; preds = %70, %56
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to double*
  store double* %80, double** %15, align 8
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %239, %74
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %246

87:                                               ; preds = %81
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %117 [
    i32 0, label %91
    i32 1, label %95
    i32 2, label %99
    i32 3, label %108
  ]

91:                                               ; preds = %87
  %92 = load double*, double** %9, align 8
  %93 = getelementptr inbounds double, double* %92, i64 0
  %94 = load double, double* %93, align 8
  store double %94, double* %17, align 8
  br label %117

95:                                               ; preds = %87
  %96 = load double*, double** %9, align 8
  %97 = getelementptr inbounds double, double* %96, i64 1
  %98 = load double, double* %97, align 8
  store double %98, double* %17, align 8
  br label %117

99:                                               ; preds = %87
  %100 = load double*, double** %9, align 8
  %101 = getelementptr inbounds double, double* %100, i64 0
  %102 = load double, double* %101, align 8
  %103 = load double*, double** %9, align 8
  %104 = getelementptr inbounds double, double* %103, i64 1
  %105 = load double, double* %104, align 8
  %106 = fadd double %102, %105
  %107 = fmul double %106, 5.000000e-01
  store double %107, double* %17, align 8
  br label %117

108:                                              ; preds = %87
  %109 = load double*, double** %9, align 8
  %110 = getelementptr inbounds double, double* %109, i64 0
  %111 = load double, double* %110, align 8
  %112 = load double*, double** %9, align 8
  %113 = getelementptr inbounds double, double* %112, i64 1
  %114 = load double, double* %113, align 8
  %115 = fsub double %111, %114
  %116 = fmul double %115, 5.000000e-01
  store double %116, double* %17, align 8
  br label %117

117:                                              ; preds = %87, %108, %99, %95, %91
  %118 = load double, double* %10, align 8
  %119 = load double, double* %17, align 8
  %120 = fmul double %119, %118
  store double %120, double* %17, align 8
  %121 = load double, double* %17, align 8
  %122 = load double*, double** %13, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds double, double* %122, i64 %125
  store double %121, double* %126, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %129, %132
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 6
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  %138 = load i64, i64* %137, align 8
  %139 = sub i64 %133, %138
  %140 = load i64, i64* %12, align 8
  %141 = and i64 %139, %140
  store i64 %141, i64* %21, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %144, %147
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 6
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  %153 = load i64, i64* %152, align 8
  %154 = sub i64 %148, %153
  %155 = load i64, i64* %12, align 8
  %156 = and i64 %154, %155
  store i64 %156, i64* %22, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 10
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %117
  %162 = load double, double* %17, align 8
  %163 = fneg double %162
  store double %163, double* %17, align 8
  br label %164

164:                                              ; preds = %161, %117
  %165 = load double*, double** %13, align 8
  %166 = load i64, i64* %21, align 8
  %167 = getelementptr inbounds double, double* %165, i64 %166
  %168 = load double, double* %167, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 7
  %171 = load double, double* %170, align 8
  %172 = fmul double %168, %171
  %173 = getelementptr inbounds [2 x double], [2 x double]* %18, i64 0, i64 0
  store double %172, double* %173, align 16
  %174 = load double*, double** %13, align 8
  %175 = load i64, i64* %22, align 8
  %176 = getelementptr inbounds double, double* %174, i64 %175
  %177 = load double, double* %176, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 7
  %180 = load double, double* %179, align 8
  %181 = fmul double %177, %180
  %182 = getelementptr inbounds [2 x double], [2 x double]* %18, i64 0, i64 1
  store double %181, double* %182, align 8
  %183 = getelementptr inbounds [2 x double], [2 x double]* %18, i64 0, i64 0
  %184 = load double, double* %183, align 16
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 8
  %187 = load double*, double** %186, align 8
  %188 = getelementptr inbounds double, double* %187, i64 0
  %189 = load double, double* %188, align 8
  %190 = fmul double %184, %189
  %191 = getelementptr inbounds [2 x double], [2 x double]* %18, i64 0, i64 1
  %192 = load double, double* %191, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 8
  %195 = load double*, double** %194, align 8
  %196 = getelementptr inbounds double, double* %195, i64 1
  %197 = load double, double* %196, align 8
  %198 = fmul double %192, %197
  %199 = fsub double %190, %198
  store double %199, double* %19, align 8
  %200 = getelementptr inbounds [2 x double], [2 x double]* %18, i64 0, i64 1
  %201 = load double, double* %200, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 9
  %204 = load double*, double** %203, align 8
  %205 = getelementptr inbounds double, double* %204, i64 1
  %206 = load double, double* %205, align 8
  %207 = fmul double %201, %206
  %208 = getelementptr inbounds [2 x double], [2 x double]* %18, i64 0, i64 0
  %209 = load double, double* %208, align 16
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 9
  %212 = load double*, double** %211, align 8
  %213 = getelementptr inbounds double, double* %212, i64 0
  %214 = load double, double* %213, align 8
  %215 = fmul double %209, %214
  %216 = fsub double %207, %215
  store double %216, double* %20, align 8
  %217 = load double, double* %17, align 8
  %218 = load double, double* %19, align 8
  %219 = fadd double %217, %218
  %220 = load double, double* %11, align 8
  %221 = fmul double %219, %220
  %222 = load double*, double** %15, align 8
  %223 = getelementptr inbounds double, double* %222, i64 0
  store double %221, double* %223, align 8
  %224 = load double, double* %17, align 8
  %225 = load double, double* %20, align 8
  %226 = fadd double %224, %225
  %227 = load double, double* %11, align 8
  %228 = fmul double %226, %227
  %229 = load double*, double** %15, align 8
  %230 = getelementptr inbounds double, double* %229, i64 1
  store double %228, double* %230, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = add i64 %233, 1
  %235 = load i64, i64* %12, align 8
  %236 = and i64 %234, %235
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 5
  store i64 %236, i64* %238, align 8
  br label %239

239:                                              ; preds = %164
  %240 = load i32, i32* %16, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %16, align 4
  %242 = load double*, double** %9, align 8
  %243 = getelementptr inbounds double, double* %242, i64 2
  store double* %243, double** %9, align 8
  %244 = load double*, double** %15, align 8
  %245 = getelementptr inbounds double, double* %244, i64 2
  store double* %245, double** %15, align 8
  br label %81

246:                                              ; preds = %81
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %249 = icmp ne %struct.TYPE_16__* %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  br label %252

252:                                              ; preds = %250, %246
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %255 = call i32 @ff_filter_frame(%struct.TYPE_17__* %253, %struct.TYPE_16__* %254)
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %252, %66
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_16__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
