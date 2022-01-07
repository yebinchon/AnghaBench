; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_chorus.c_chorus_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_chorus.c_chorus_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dspfilter_output = type { float*, i32 }
%struct.dspfilter_input = type { float*, i32 }
%struct.chorus_data = type { float, float, double, double, float, float**, i64, float, float }

@M_PI = common dso_local global double 0.000000e+00, align 8
@CHORUS_MAX_DELAY = common dso_local global i32 0, align 4
@CHORUS_DELAY_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dspfilter_output*, %struct.dspfilter_input*)* @chorus_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chorus_process(i8* %0, %struct.dspfilter_output* %1, %struct.dspfilter_input* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dspfilter_output*, align 8
  %6 = alloca %struct.dspfilter_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca %struct.chorus_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca [2 x float], align 4
  %19 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dspfilter_output* %1, %struct.dspfilter_output** %5, align 8
  store %struct.dspfilter_input* %2, %struct.dspfilter_input** %6, align 8
  store float* null, float** %8, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.chorus_data*
  store %struct.chorus_data* %21, %struct.chorus_data** %9, align 8
  %22 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %23 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %22, i32 0, i32 0
  %24 = load float*, float** %23, align 8
  %25 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %26 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %25, i32 0, i32 0
  store float* %24, float** %26, align 8
  %27 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %28 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %31 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %33 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %32, i32 0, i32 0
  %34 = load float*, float** %33, align 8
  store float* %34, float** %8, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %238, %3
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %38 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %243

41:                                               ; preds = %35
  %42 = getelementptr inbounds [2 x float], [2 x float]* %18, i64 0, i64 0
  %43 = load float*, float** %8, align 8
  %44 = getelementptr inbounds float, float* %43, i64 0
  %45 = load float, float* %44, align 4
  store float %45, float* %42, align 4
  %46 = getelementptr inbounds float, float* %42, i64 1
  %47 = load float*, float** %8, align 8
  %48 = getelementptr inbounds float, float* %47, i64 1
  %49 = load float, float* %48, align 4
  store float %49, float* %46, align 4
  %50 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %51 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %50, i32 0, i32 0
  %52 = load float, float* %51, align 8
  %53 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %54 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %53, i32 0, i32 1
  %55 = load float, float* %54, align 4
  %56 = load double, double* @M_PI, align 8
  %57 = fmul double 2.000000e+00, %56
  %58 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %59 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %58, i32 0, i32 2
  %60 = load double, double* %59, align 8
  %61 = fadd double %60, 1.000000e+00
  store double %61, double* %59, align 8
  %62 = fmul double %57, %60
  %63 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %64 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %63, i32 0, i32 3
  %65 = load double, double* %64, align 8
  %66 = fdiv double %62, %65
  %67 = call float @sin(double %66)
  %68 = fmul float %55, %67
  %69 = fadd float %52, %68
  store float %69, float* %19, align 4
  %70 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %71 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %70, i32 0, i32 4
  %72 = load float, float* %71, align 8
  %73 = load float, float* %19, align 4
  %74 = fmul float %73, %72
  store float %74, float* %19, align 4
  %75 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %76 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %75, i32 0, i32 2
  %77 = load double, double* %76, align 8
  %78 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %79 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %78, i32 0, i32 3
  %80 = load double, double* %79, align 8
  %81 = fcmp oge double %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %41
  %83 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %84 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %83, i32 0, i32 2
  store double 0.000000e+00, double* %84, align 8
  br label %85

85:                                               ; preds = %82, %41
  %86 = load float, float* %19, align 4
  %87 = fptoui float %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @CHORUS_MAX_DELAY, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp uge i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @CHORUS_MAX_DELAY, align 4
  %94 = sub nsw i32 %93, 2
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %85
  %96 = load float, float* %19, align 4
  %97 = load i32, i32* %10, align 4
  %98 = uitofp i32 %97 to float
  %99 = fsub float %96, %98
  store float %99, float* %11, align 4
  %100 = getelementptr inbounds [2 x float], [2 x float]* %18, i64 0, i64 0
  %101 = load float, float* %100, align 4
  %102 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %103 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %102, i32 0, i32 5
  %104 = load float**, float*** %103, align 8
  %105 = getelementptr inbounds float*, float** %104, i64 0
  %106 = load float*, float** %105, align 8
  %107 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %108 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds float, float* %106, i64 %109
  store float %101, float* %110, align 4
  %111 = getelementptr inbounds [2 x float], [2 x float]* %18, i64 0, i64 1
  %112 = load float, float* %111, align 4
  %113 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %114 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %113, i32 0, i32 5
  %115 = load float**, float*** %114, align 8
  %116 = getelementptr inbounds float*, float** %115, i64 1
  %117 = load float*, float** %116, align 8
  %118 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %119 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds float, float* %117, i64 %120
  store float %112, float* %121, align 4
  %122 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %123 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %122, i32 0, i32 5
  %124 = load float**, float*** %123, align 8
  %125 = getelementptr inbounds float*, float** %124, i64 0
  %126 = load float*, float** %125, align 8
  %127 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %128 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = sub i64 %129, %131
  %133 = sub i64 %132, 0
  %134 = load i64, i64* @CHORUS_DELAY_MASK, align 8
  %135 = and i64 %133, %134
  %136 = getelementptr inbounds float, float* %126, i64 %135
  %137 = load float, float* %136, align 4
  store float %137, float* %12, align 4
  %138 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %139 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %138, i32 0, i32 5
  %140 = load float**, float*** %139, align 8
  %141 = getelementptr inbounds float*, float** %140, i64 0
  %142 = load float*, float** %141, align 8
  %143 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %144 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = sub i64 %145, %147
  %149 = sub i64 %148, 1
  %150 = load i64, i64* @CHORUS_DELAY_MASK, align 8
  %151 = and i64 %149, %150
  %152 = getelementptr inbounds float, float* %142, i64 %151
  %153 = load float, float* %152, align 4
  store float %153, float* %13, align 4
  %154 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %155 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %154, i32 0, i32 5
  %156 = load float**, float*** %155, align 8
  %157 = getelementptr inbounds float*, float** %156, i64 1
  %158 = load float*, float** %157, align 8
  %159 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %160 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = zext i32 %162 to i64
  %164 = sub i64 %161, %163
  %165 = sub i64 %164, 0
  %166 = load i64, i64* @CHORUS_DELAY_MASK, align 8
  %167 = and i64 %165, %166
  %168 = getelementptr inbounds float, float* %158, i64 %167
  %169 = load float, float* %168, align 4
  store float %169, float* %14, align 4
  %170 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %171 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %170, i32 0, i32 5
  %172 = load float**, float*** %171, align 8
  %173 = getelementptr inbounds float*, float** %172, i64 1
  %174 = load float*, float** %173, align 8
  %175 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %176 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = zext i32 %178 to i64
  %180 = sub i64 %177, %179
  %181 = sub i64 %180, 1
  %182 = load i64, i64* @CHORUS_DELAY_MASK, align 8
  %183 = and i64 %181, %182
  %184 = getelementptr inbounds float, float* %174, i64 %183
  %185 = load float, float* %184, align 4
  store float %185, float* %15, align 4
  %186 = load float, float* %12, align 4
  %187 = load float, float* %11, align 4
  %188 = fsub float 1.000000e+00, %187
  %189 = fmul float %186, %188
  %190 = load float, float* %13, align 4
  %191 = load float, float* %11, align 4
  %192 = fmul float %190, %191
  %193 = fadd float %189, %192
  store float %193, float* %16, align 4
  %194 = load float, float* %14, align 4
  %195 = load float, float* %11, align 4
  %196 = fsub float 1.000000e+00, %195
  %197 = fmul float %194, %196
  %198 = load float, float* %15, align 4
  %199 = load float, float* %11, align 4
  %200 = fmul float %198, %199
  %201 = fadd float %197, %200
  store float %201, float* %17, align 4
  %202 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %203 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %202, i32 0, i32 7
  %204 = load float, float* %203, align 8
  %205 = getelementptr inbounds [2 x float], [2 x float]* %18, i64 0, i64 0
  %206 = load float, float* %205, align 4
  %207 = fmul float %204, %206
  %208 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %209 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %208, i32 0, i32 8
  %210 = load float, float* %209, align 4
  %211 = load float, float* %16, align 4
  %212 = fmul float %210, %211
  %213 = fadd float %207, %212
  %214 = load float*, float** %8, align 8
  %215 = getelementptr inbounds float, float* %214, i64 0
  store float %213, float* %215, align 4
  %216 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %217 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %216, i32 0, i32 7
  %218 = load float, float* %217, align 8
  %219 = getelementptr inbounds [2 x float], [2 x float]* %18, i64 0, i64 1
  %220 = load float, float* %219, align 4
  %221 = fmul float %218, %220
  %222 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %223 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %222, i32 0, i32 8
  %224 = load float, float* %223, align 4
  %225 = load float, float* %17, align 4
  %226 = fmul float %224, %225
  %227 = fadd float %221, %226
  %228 = load float*, float** %8, align 8
  %229 = getelementptr inbounds float, float* %228, i64 1
  store float %227, float* %229, align 4
  %230 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %231 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = add i64 %232, 1
  %234 = load i64, i64* @CHORUS_DELAY_MASK, align 8
  %235 = and i64 %233, %234
  %236 = load %struct.chorus_data*, %struct.chorus_data** %9, align 8
  %237 = getelementptr inbounds %struct.chorus_data, %struct.chorus_data* %236, i32 0, i32 6
  store i64 %235, i64* %237, align 8
  br label %238

238:                                              ; preds = %95
  %239 = load i32, i32* %7, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %7, align 4
  %241 = load float*, float** %8, align 8
  %242 = getelementptr inbounds float, float* %241, i64 2
  store float* %242, float** %8, align 8
  br label %35

243:                                              ; preds = %35
  ret void
}

declare dso_local float @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
