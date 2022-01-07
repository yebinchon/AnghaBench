; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_fill_in_tongue.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_fill_in_tongue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ColorSystem = type { i32 }

@LUV = common dso_local global i32 0, align 4
@UCS = common dso_local global i32 0, align 4
@XYY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, %struct.ColorSystem*, [3 x double]*, i32, i32, float)* @fill_in_tongue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_in_tongue(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ColorSystem* %5, [3 x double]* %6, i32 %7, i32 %8, float %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ColorSystem*, align 8
  %17 = alloca [3 x double]*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.ColorSystem* %5, %struct.ColorSystem** %16, align 8
  store [3 x double]* %6, [3 x double]** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store float %9, float* %20, align 4
  store i32 0, i32* %21, align 4
  br label %41

41:                                               ; preds = %238, %10
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %241

45:                                               ; preds = %41
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %21, align 4
  %50 = call i32 @find_tongue(i32* %46, i32 %47, i32 %48, i32 %49, i32* %22, i32* %23, i32* %24)
  %51 = load i32, i32* %22, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %237

53:                                               ; preds = %45
  %54 = load i32, i32* %23, align 4
  store i32 %54, i32* %25, align 4
  br label %55

55:                                               ; preds = %233, %53
  %56 = load i32, i32* %25, align 4
  %57 = load i32, i32* %24, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %236

59:                                               ; preds = %55
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %36, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @LUV, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load i32, i32* %25, align 4
  %66 = sitofp i32 %65 to double
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %66, %69
  store double %70, double* %37, align 8
  %71 = load i32, i32* %21, align 4
  %72 = sitofp i32 %71 to double
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %72, %75
  %77 = fsub double 1.000000e+00, %76
  store double %77, double* %38, align 8
  %78 = load double, double* %37, align 8
  %79 = load double, double* %38, align 8
  %80 = call i32 @upvp_to_xy(double %78, double %79, double* %26, double* %27)
  %81 = load double, double* %26, align 8
  %82 = load double, double* %27, align 8
  %83 = fadd double %81, %82
  %84 = fsub double 1.000000e+00, %83
  store double %84, double* %28, align 8
  br label %136

85:                                               ; preds = %59
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* @UCS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %85
  %90 = load i32, i32* %25, align 4
  %91 = sitofp i32 %90 to double
  %92 = load i32, i32* %13, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sitofp i32 %93 to double
  %95 = fdiv double %91, %94
  store double %95, double* %39, align 8
  %96 = load i32, i32* %21, align 4
  %97 = sitofp i32 %96 to double
  %98 = load i32, i32* %14, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sitofp i32 %99 to double
  %101 = fdiv double %97, %100
  %102 = fsub double 1.000000e+00, %101
  store double %102, double* %40, align 8
  %103 = load double, double* %39, align 8
  %104 = load double, double* %40, align 8
  %105 = call i32 @uv_to_xy(double %103, double %104, double* %26, double* %27)
  %106 = load double, double* %26, align 8
  %107 = load double, double* %27, align 8
  %108 = fadd double %106, %107
  %109 = fsub double 1.000000e+00, %108
  store double %109, double* %28, align 8
  br label %135

110:                                              ; preds = %85
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* @XYY, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %110
  %115 = load i32, i32* %25, align 4
  %116 = sitofp i32 %115 to double
  %117 = load i32, i32* %13, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sitofp i32 %118 to double
  %120 = fdiv double %116, %119
  store double %120, double* %26, align 8
  %121 = load i32, i32* %21, align 4
  %122 = sitofp i32 %121 to double
  %123 = load i32, i32* %14, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sitofp i32 %124 to double
  %126 = fdiv double %122, %125
  %127 = fsub double 1.000000e+00, %126
  store double %127, double* %27, align 8
  %128 = load double, double* %26, align 8
  %129 = load double, double* %27, align 8
  %130 = fadd double %128, %129
  %131 = fsub double 1.000000e+00, %130
  store double %131, double* %28, align 8
  br label %134

132:                                              ; preds = %110
  %133 = call i32 @av_assert0(i32 0)
  br label %134

134:                                              ; preds = %132, %114
  br label %135

135:                                              ; preds = %134, %89
  br label %136

136:                                              ; preds = %135, %64
  %137 = load [3 x double]*, [3 x double]** %17, align 8
  %138 = bitcast [3 x double]* %137 to double**
  %139 = load double, double* %26, align 8
  %140 = load double, double* %27, align 8
  %141 = load double, double* %28, align 8
  %142 = call i32 @xyz_to_rgb(double** %138, double %139, double %140, double %141, double* %29, double* %30, double* %31)
  %143 = call i64 @constrain_rgb(double* %29, double* %30, double* %31)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %136
  %146 = load float, float* %20, align 4
  %147 = load i32, i32* %36, align 4
  %148 = sitofp i32 %147 to float
  %149 = fmul float %148, %146
  %150 = fptosi float %149 to i32
  store i32 %150, i32* %36, align 4
  br label %151

151:                                              ; preds = %145, %136
  %152 = load double, double* %29, align 8
  %153 = load double, double* %30, align 8
  %154 = load double, double* %31, align 8
  %155 = call double @FFMAX3(double %152, double %153, double %154)
  store double %155, double* %32, align 8
  %156 = load double, double* %32, align 8
  %157 = fcmp ogt double %156, 0.000000e+00
  br i1 %157, label %158, label %168

158:                                              ; preds = %151
  %159 = load double, double* %29, align 8
  %160 = load double, double* %32, align 8
  %161 = fdiv double %159, %160
  store double %161, double* %29, align 8
  %162 = load double, double* %30, align 8
  %163 = load double, double* %32, align 8
  %164 = fdiv double %162, %163
  store double %164, double* %30, align 8
  %165 = load double, double* %31, align 8
  %166 = load double, double* %32, align 8
  %167 = fdiv double %165, %166
  store double %167, double* %31, align 8
  br label %168

168:                                              ; preds = %158, %151
  %169 = load i32, i32* %19, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.ColorSystem*, %struct.ColorSystem** %16, align 8
  %173 = call i32 @gamma_correct_rgb(%struct.ColorSystem* %172, double* %29, double* %30, double* %31)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* %36, align 4
  %176 = sitofp i32 %175 to double
  %177 = load double, double* %29, align 8
  %178 = fmul double %176, %177
  %179 = fptosi double %178 to i32
  store i32 %179, i32* %33, align 4
  %180 = load i32, i32* %36, align 4
  %181 = sitofp i32 %180 to double
  %182 = load double, double* %30, align 8
  %183 = fmul double %181, %182
  %184 = fptosi double %183 to i32
  store i32 %184, i32* %34, align 4
  %185 = load i32, i32* %36, align 4
  %186 = sitofp i32 %185 to double
  %187 = load double, double* %31, align 8
  %188 = fmul double %186, %187
  %189 = fptosi double %188 to i32
  store i32 %189, i32* %35, align 4
  %190 = load i32, i32* %33, align 4
  %191 = load i32*, i32** %11, align 8
  %192 = load i32, i32* %21, align 4
  %193 = load i32, i32* %12, align 4
  %194 = mul nsw i32 %192, %193
  %195 = load i32, i32* %25, align 4
  %196 = mul nsw i32 %195, 4
  %197 = add nsw i32 %194, %196
  %198 = add nsw i32 %197, 0
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %191, i64 %199
  store i32 %190, i32* %200, align 4
  %201 = load i32, i32* %34, align 4
  %202 = load i32*, i32** %11, align 8
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %12, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load i32, i32* %25, align 4
  %207 = mul nsw i32 %206, 4
  %208 = add nsw i32 %205, %207
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %202, i64 %210
  store i32 %201, i32* %211, align 4
  %212 = load i32, i32* %35, align 4
  %213 = load i32*, i32** %11, align 8
  %214 = load i32, i32* %21, align 4
  %215 = load i32, i32* %12, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %25, align 4
  %218 = mul nsw i32 %217, 4
  %219 = add nsw i32 %216, %218
  %220 = add nsw i32 %219, 2
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %213, i64 %221
  store i32 %212, i32* %222, align 4
  %223 = load i32*, i32** %11, align 8
  %224 = load i32, i32* %21, align 4
  %225 = load i32, i32* %12, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load i32, i32* %25, align 4
  %228 = mul nsw i32 %227, 4
  %229 = add nsw i32 %226, %228
  %230 = add nsw i32 %229, 3
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %223, i64 %231
  store i32 65535, i32* %232, align 4
  br label %233

233:                                              ; preds = %174
  %234 = load i32, i32* %25, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %25, align 4
  br label %55

236:                                              ; preds = %55
  br label %237

237:                                              ; preds = %236, %45
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %21, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %21, align 4
  br label %41

241:                                              ; preds = %41
  ret void
}

declare dso_local i32 @find_tongue(i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @upvp_to_xy(double, double, double*, double*) #1

declare dso_local i32 @uv_to_xy(double, double, double*, double*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @xyz_to_rgb(double**, double, double, double, double*, double*, double*) #1

declare dso_local i64 @constrain_rgb(double*, double*, double*) #1

declare dso_local double @FFMAX3(double, double, double) #1

declare dso_local i32 @gamma_correct_rgb(%struct.ColorSystem*, double*, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
