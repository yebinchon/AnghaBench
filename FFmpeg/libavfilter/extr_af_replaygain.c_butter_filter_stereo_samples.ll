; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_replaygain.c_butter_filter_stereo_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_replaygain.c_butter_filter_stereo_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, double*, float*, float*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32)* @butter_filter_stereo_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @butter_filter_stereo_samples(%struct.TYPE_3__* %0, float* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load double*, double** %16, align 8
  store double* %17, double** %7, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load double*, double** %19, align 8
  store double* %20, double** %8, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load float*, float** %22, align 8
  store float* %23, float** %9, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load float*, float** %25, align 8
  store float* %26, float** %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  store i32 -4, i32* %14, align 4
  br label %30

30:                                               ; preds = %57, %3
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %30
  %34 = load float*, float** %9, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %34, i64 %38
  %40 = load float, float* %39, align 4
  %41 = call i32 @fabs(float %40)
  %42 = sitofp i32 %41 to double
  %43 = fcmp ogt double %42, 1.000000e-10
  br i1 %43, label %55, label %44

44:                                               ; preds = %33
  %45 = load float*, float** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %45, i64 %49
  %51 = load float, float* %50, align 4
  %52 = call i32 @fabs(float %51)
  %53 = sitofp i32 %52 to double
  %54 = fcmp ogt double %53, 1.000000e-10
  br i1 %54, label %55, label %56

55:                                               ; preds = %44, %33
  br label %60

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %30

60:                                               ; preds = %55, %30
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load float*, float** %65, align 8
  %67 = call i32 @memset(float* %66, i32 0, i32 8)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load float*, float** %69, align 8
  %71 = call i32 @memset(float* %70, i32 0, i32 8)
  br label %72

72:                                               ; preds = %63, %60
  br label %73

73:                                               ; preds = %234, %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %6, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %235

77:                                               ; preds = %73
  %78 = load float*, float** %5, align 8
  %79 = getelementptr inbounds float, float* %78, i64 0
  %80 = load float, float* %79, align 4
  %81 = load float*, float** %10, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  store float %80, float* %84, align 4
  %85 = fpext float %80 to double
  %86 = load double*, double** %8, align 8
  %87 = getelementptr inbounds double, double* %86, i64 0
  %88 = load double, double* %87, align 8
  %89 = fmul double %85, %88
  store double %89, double* %11, align 8
  %90 = load float*, float** %5, align 8
  %91 = getelementptr inbounds float, float* %90, i64 1
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %10, align 8
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %93, i64 %96
  store float %92, float* %97, align 4
  %98 = fpext float %92 to double
  %99 = load double*, double** %8, align 8
  %100 = getelementptr inbounds double, double* %99, i64 0
  %101 = load double, double* %100, align 8
  %102 = fmul double %98, %101
  store double %102, double* %12, align 8
  %103 = load float*, float** %10, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %103, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fpext float %108 to double
  %110 = load double*, double** %8, align 8
  %111 = getelementptr inbounds double, double* %110, i64 1
  %112 = load double, double* %111, align 8
  %113 = fmul double %109, %112
  %114 = load float*, float** %9, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %114, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fpext float %119 to double
  %121 = load double*, double** %7, align 8
  %122 = getelementptr inbounds double, double* %121, i64 1
  %123 = load double, double* %122, align 8
  %124 = fmul double %120, %123
  %125 = fsub double %113, %124
  %126 = load double, double* %11, align 8
  %127 = fadd double %126, %125
  store double %127, double* %11, align 8
  %128 = load float*, float** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %128, i64 %131
  %133 = load float, float* %132, align 4
  %134 = fpext float %133 to double
  %135 = load double*, double** %8, align 8
  %136 = getelementptr inbounds double, double* %135, i64 1
  %137 = load double, double* %136, align 8
  %138 = fmul double %134, %137
  %139 = load float*, float** %9, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %139, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fpext float %144 to double
  %146 = load double*, double** %7, align 8
  %147 = getelementptr inbounds double, double* %146, i64 1
  %148 = load double, double* %147, align 8
  %149 = fmul double %145, %148
  %150 = fsub double %138, %149
  %151 = load double, double* %12, align 8
  %152 = fadd double %151, %150
  store double %152, double* %12, align 8
  %153 = load float*, float** %10, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sub nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %153, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fpext float %158 to double
  %160 = load double*, double** %8, align 8
  %161 = getelementptr inbounds double, double* %160, i64 2
  %162 = load double, double* %161, align 8
  %163 = fmul double %159, %162
  %164 = load float*, float** %9, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sub nsw i32 %165, 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %164, i64 %167
  %169 = load float, float* %168, align 4
  %170 = fpext float %169 to double
  %171 = load double*, double** %7, align 8
  %172 = getelementptr inbounds double, double* %171, i64 2
  %173 = load double, double* %172, align 8
  %174 = fmul double %170, %173
  %175 = fsub double %163, %174
  %176 = load double, double* %11, align 8
  %177 = fadd double %176, %175
  store double %177, double* %11, align 8
  %178 = load float*, float** %10, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sub nsw i32 %179, 3
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %178, i64 %181
  %183 = load float, float* %182, align 4
  %184 = fpext float %183 to double
  %185 = load double*, double** %8, align 8
  %186 = getelementptr inbounds double, double* %185, i64 2
  %187 = load double, double* %186, align 8
  %188 = fmul double %184, %187
  %189 = load float*, float** %9, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %190, 3
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %189, i64 %192
  %194 = load float, float* %193, align 4
  %195 = fpext float %194 to double
  %196 = load double*, double** %7, align 8
  %197 = getelementptr inbounds double, double* %196, i64 2
  %198 = load double, double* %197, align 8
  %199 = fmul double %195, %198
  %200 = fsub double %188, %199
  %201 = load double, double* %12, align 8
  %202 = fadd double %201, %200
  store double %202, double* %12, align 8
  %203 = load double, double* %11, align 8
  %204 = fptrunc double %203 to float
  %205 = load float*, float** %9, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  store float %204, float* %208, align 4
  %209 = load float*, float** %5, align 8
  %210 = getelementptr inbounds float, float* %209, i64 0
  store float %204, float* %210, align 4
  %211 = load double, double* %12, align 8
  %212 = fptrunc double %211 to float
  %213 = load float*, float** %9, align 8
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %213, i64 %216
  store float %212, float* %217, align 4
  %218 = load float*, float** %5, align 8
  %219 = getelementptr inbounds float, float* %218, i64 1
  store float %212, float* %219, align 4
  %220 = load float*, float** %5, align 8
  %221 = getelementptr inbounds float, float* %220, i64 2
  store float* %221, float** %5, align 8
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 2
  store i32 %223, i32* %13, align 4
  %224 = icmp eq i32 %223, 256
  br i1 %224, label %225, label %234

225:                                              ; preds = %77
  %226 = load float*, float** %9, align 8
  %227 = load float*, float** %9, align 8
  %228 = getelementptr inbounds float, float* %227, i64 252
  %229 = call i32 @memcpy(float* %226, float* %228, i32 16)
  %230 = load float*, float** %10, align 8
  %231 = load float*, float** %10, align 8
  %232 = getelementptr inbounds float, float* %231, i64 252
  %233 = call i32 @memcpy(float* %230, float* %232, i32 16)
  store i32 4, i32* %13, align 4
  br label %234

234:                                              ; preds = %225, %77
  br label %73

235:                                              ; preds = %73
  %236 = load i32, i32* %13, align 4
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 8
  ret void
}

declare dso_local i32 @fabs(float) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
