; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_fill_rgb2xyz_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_fill_rgb2xyz_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PrimaryCoefficients = type { double, double, double, double, double, double }
%struct.WhitepointCoefficients = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_fill_rgb2xyz_table(%struct.PrimaryCoefficients* %0, %struct.WhitepointCoefficients* %1, [3 x double]* %2) #0 {
  %4 = alloca %struct.PrimaryCoefficients*, align 8
  %5 = alloca %struct.WhitepointCoefficients*, align 8
  %6 = alloca [3 x double]*, align 8
  %7 = alloca [3 x [3 x double]], align 16
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.PrimaryCoefficients* %0, %struct.PrimaryCoefficients** %4, align 8
  store %struct.WhitepointCoefficients* %1, %struct.WhitepointCoefficients** %5, align 8
  store [3 x double]* %2, [3 x double]** %6, align 8
  %12 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %13 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %16 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fdiv double %14, %17
  %19 = load [3 x double]*, [3 x double]** %6, align 8
  %20 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0
  %21 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 0
  store double %18, double* %21, align 8
  %22 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %23 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %22, i32 0, i32 2
  %24 = load double, double* %23, align 8
  %25 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %26 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %25, i32 0, i32 3
  %27 = load double, double* %26, align 8
  %28 = fdiv double %24, %27
  %29 = load [3 x double]*, [3 x double]** %6, align 8
  %30 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0
  %31 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %28, double* %31, align 8
  %32 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %33 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %32, i32 0, i32 4
  %34 = load double, double* %33, align 8
  %35 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %36 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %35, i32 0, i32 5
  %37 = load double, double* %36, align 8
  %38 = fdiv double %34, %37
  %39 = load [3 x double]*, [3 x double]** %6, align 8
  %40 = getelementptr inbounds [3 x double], [3 x double]* %39, i64 0
  %41 = getelementptr inbounds [3 x double], [3 x double]* %40, i64 0, i64 2
  store double %38, double* %41, align 8
  %42 = load [3 x double]*, [3 x double]** %6, align 8
  %43 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 1
  %44 = getelementptr inbounds [3 x double], [3 x double]* %43, i64 0, i64 2
  store double 1.000000e+00, double* %44, align 8
  %45 = load [3 x double]*, [3 x double]** %6, align 8
  %46 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 1
  %47 = getelementptr inbounds [3 x double], [3 x double]* %46, i64 0, i64 1
  store double 1.000000e+00, double* %47, align 8
  %48 = load [3 x double]*, [3 x double]** %6, align 8
  %49 = getelementptr inbounds [3 x double], [3 x double]* %48, i64 1
  %50 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 0, i64 0
  store double 1.000000e+00, double* %50, align 8
  %51 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %52 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %51, i32 0, i32 0
  %53 = load double, double* %52, align 8
  %54 = fsub double 1.000000e+00, %53
  %55 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %56 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %55, i32 0, i32 1
  %57 = load double, double* %56, align 8
  %58 = fsub double %54, %57
  %59 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %60 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %59, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = fdiv double %58, %61
  %63 = load [3 x double]*, [3 x double]** %6, align 8
  %64 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 2
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 0, i64 0
  store double %62, double* %65, align 8
  %66 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %67 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %66, i32 0, i32 2
  %68 = load double, double* %67, align 8
  %69 = fsub double 1.000000e+00, %68
  %70 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %71 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %70, i32 0, i32 3
  %72 = load double, double* %71, align 8
  %73 = fsub double %69, %72
  %74 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %75 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %74, i32 0, i32 3
  %76 = load double, double* %75, align 8
  %77 = fdiv double %73, %76
  %78 = load [3 x double]*, [3 x double]** %6, align 8
  %79 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 2
  %80 = getelementptr inbounds [3 x double], [3 x double]* %79, i64 0, i64 1
  store double %77, double* %80, align 8
  %81 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %82 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %81, i32 0, i32 4
  %83 = load double, double* %82, align 8
  %84 = fsub double 1.000000e+00, %83
  %85 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %86 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %85, i32 0, i32 5
  %87 = load double, double* %86, align 8
  %88 = fsub double %84, %87
  %89 = load %struct.PrimaryCoefficients*, %struct.PrimaryCoefficients** %4, align 8
  %90 = getelementptr inbounds %struct.PrimaryCoefficients, %struct.PrimaryCoefficients* %89, i32 0, i32 5
  %91 = load double, double* %90, align 8
  %92 = fdiv double %88, %91
  %93 = load [3 x double]*, [3 x double]** %6, align 8
  %94 = getelementptr inbounds [3 x double], [3 x double]* %93, i64 2
  %95 = getelementptr inbounds [3 x double], [3 x double]* %94, i64 0, i64 2
  store double %92, double* %95, align 8
  %96 = load [3 x double]*, [3 x double]** %6, align 8
  %97 = bitcast [3 x double]* %96 to double**
  %98 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %99 = bitcast [3 x double]* %98 to double**
  %100 = call i32 @ff_matrix_invert_3x3(double** %97, double** %99)
  %101 = load %struct.WhitepointCoefficients*, %struct.WhitepointCoefficients** %5, align 8
  %102 = getelementptr inbounds %struct.WhitepointCoefficients, %struct.WhitepointCoefficients* %101, i32 0, i32 0
  %103 = load double, double* %102, align 8
  %104 = fsub double 1.000000e+00, %103
  %105 = load %struct.WhitepointCoefficients*, %struct.WhitepointCoefficients** %5, align 8
  %106 = getelementptr inbounds %struct.WhitepointCoefficients, %struct.WhitepointCoefficients* %105, i32 0, i32 1
  %107 = load double, double* %106, align 8
  %108 = fsub double %104, %107
  store double %108, double* %11, align 8
  %109 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %110 = getelementptr inbounds [3 x double], [3 x double]* %109, i64 0, i64 0
  %111 = load double, double* %110, align 16
  %112 = load %struct.WhitepointCoefficients*, %struct.WhitepointCoefficients** %5, align 8
  %113 = getelementptr inbounds %struct.WhitepointCoefficients, %struct.WhitepointCoefficients* %112, i32 0, i32 0
  %114 = load double, double* %113, align 8
  %115 = fmul double %111, %114
  %116 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %117 = getelementptr inbounds [3 x double], [3 x double]* %116, i64 0, i64 1
  %118 = load double, double* %117, align 8
  %119 = load %struct.WhitepointCoefficients*, %struct.WhitepointCoefficients** %5, align 8
  %120 = getelementptr inbounds %struct.WhitepointCoefficients, %struct.WhitepointCoefficients* %119, i32 0, i32 1
  %121 = load double, double* %120, align 8
  %122 = fmul double %118, %121
  %123 = fadd double %115, %122
  %124 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %125 = getelementptr inbounds [3 x double], [3 x double]* %124, i64 0, i64 2
  %126 = load double, double* %125, align 16
  %127 = load double, double* %11, align 8
  %128 = fmul double %126, %127
  %129 = fadd double %123, %128
  store double %129, double* %8, align 8
  %130 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 1
  %131 = getelementptr inbounds [3 x double], [3 x double]* %130, i64 0, i64 0
  %132 = load double, double* %131, align 8
  %133 = load %struct.WhitepointCoefficients*, %struct.WhitepointCoefficients** %5, align 8
  %134 = getelementptr inbounds %struct.WhitepointCoefficients, %struct.WhitepointCoefficients* %133, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = fmul double %132, %135
  %137 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 1
  %138 = getelementptr inbounds [3 x double], [3 x double]* %137, i64 0, i64 1
  %139 = load double, double* %138, align 8
  %140 = load %struct.WhitepointCoefficients*, %struct.WhitepointCoefficients** %5, align 8
  %141 = getelementptr inbounds %struct.WhitepointCoefficients, %struct.WhitepointCoefficients* %140, i32 0, i32 1
  %142 = load double, double* %141, align 8
  %143 = fmul double %139, %142
  %144 = fadd double %136, %143
  %145 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 1
  %146 = getelementptr inbounds [3 x double], [3 x double]* %145, i64 0, i64 2
  %147 = load double, double* %146, align 8
  %148 = load double, double* %11, align 8
  %149 = fmul double %147, %148
  %150 = fadd double %144, %149
  store double %150, double* %9, align 8
  %151 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 2
  %152 = getelementptr inbounds [3 x double], [3 x double]* %151, i64 0, i64 0
  %153 = load double, double* %152, align 16
  %154 = load %struct.WhitepointCoefficients*, %struct.WhitepointCoefficients** %5, align 8
  %155 = getelementptr inbounds %struct.WhitepointCoefficients, %struct.WhitepointCoefficients* %154, i32 0, i32 0
  %156 = load double, double* %155, align 8
  %157 = fmul double %153, %156
  %158 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 2
  %159 = getelementptr inbounds [3 x double], [3 x double]* %158, i64 0, i64 1
  %160 = load double, double* %159, align 8
  %161 = load %struct.WhitepointCoefficients*, %struct.WhitepointCoefficients** %5, align 8
  %162 = getelementptr inbounds %struct.WhitepointCoefficients, %struct.WhitepointCoefficients* %161, i32 0, i32 1
  %163 = load double, double* %162, align 8
  %164 = fmul double %160, %163
  %165 = fadd double %157, %164
  %166 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 2
  %167 = getelementptr inbounds [3 x double], [3 x double]* %166, i64 0, i64 2
  %168 = load double, double* %167, align 16
  %169 = load double, double* %11, align 8
  %170 = fmul double %168, %169
  %171 = fadd double %165, %170
  store double %171, double* %10, align 8
  %172 = load double, double* %8, align 8
  %173 = load [3 x double]*, [3 x double]** %6, align 8
  %174 = getelementptr inbounds [3 x double], [3 x double]* %173, i64 0
  %175 = getelementptr inbounds [3 x double], [3 x double]* %174, i64 0, i64 0
  %176 = load double, double* %175, align 8
  %177 = fmul double %176, %172
  store double %177, double* %175, align 8
  %178 = load double, double* %9, align 8
  %179 = load [3 x double]*, [3 x double]** %6, align 8
  %180 = getelementptr inbounds [3 x double], [3 x double]* %179, i64 0
  %181 = getelementptr inbounds [3 x double], [3 x double]* %180, i64 0, i64 1
  %182 = load double, double* %181, align 8
  %183 = fmul double %182, %178
  store double %183, double* %181, align 8
  %184 = load double, double* %10, align 8
  %185 = load [3 x double]*, [3 x double]** %6, align 8
  %186 = getelementptr inbounds [3 x double], [3 x double]* %185, i64 0
  %187 = getelementptr inbounds [3 x double], [3 x double]* %186, i64 0, i64 2
  %188 = load double, double* %187, align 8
  %189 = fmul double %188, %184
  store double %189, double* %187, align 8
  %190 = load double, double* %8, align 8
  %191 = load [3 x double]*, [3 x double]** %6, align 8
  %192 = getelementptr inbounds [3 x double], [3 x double]* %191, i64 1
  %193 = getelementptr inbounds [3 x double], [3 x double]* %192, i64 0, i64 0
  %194 = load double, double* %193, align 8
  %195 = fmul double %194, %190
  store double %195, double* %193, align 8
  %196 = load double, double* %9, align 8
  %197 = load [3 x double]*, [3 x double]** %6, align 8
  %198 = getelementptr inbounds [3 x double], [3 x double]* %197, i64 1
  %199 = getelementptr inbounds [3 x double], [3 x double]* %198, i64 0, i64 1
  %200 = load double, double* %199, align 8
  %201 = fmul double %200, %196
  store double %201, double* %199, align 8
  %202 = load double, double* %10, align 8
  %203 = load [3 x double]*, [3 x double]** %6, align 8
  %204 = getelementptr inbounds [3 x double], [3 x double]* %203, i64 1
  %205 = getelementptr inbounds [3 x double], [3 x double]* %204, i64 0, i64 2
  %206 = load double, double* %205, align 8
  %207 = fmul double %206, %202
  store double %207, double* %205, align 8
  %208 = load double, double* %8, align 8
  %209 = load [3 x double]*, [3 x double]** %6, align 8
  %210 = getelementptr inbounds [3 x double], [3 x double]* %209, i64 2
  %211 = getelementptr inbounds [3 x double], [3 x double]* %210, i64 0, i64 0
  %212 = load double, double* %211, align 8
  %213 = fmul double %212, %208
  store double %213, double* %211, align 8
  %214 = load double, double* %9, align 8
  %215 = load [3 x double]*, [3 x double]** %6, align 8
  %216 = getelementptr inbounds [3 x double], [3 x double]* %215, i64 2
  %217 = getelementptr inbounds [3 x double], [3 x double]* %216, i64 0, i64 1
  %218 = load double, double* %217, align 8
  %219 = fmul double %218, %214
  store double %219, double* %217, align 8
  %220 = load double, double* %10, align 8
  %221 = load [3 x double]*, [3 x double]** %6, align 8
  %222 = getelementptr inbounds [3 x double], [3 x double]* %221, i64 2
  %223 = getelementptr inbounds [3 x double], [3 x double]* %222, i64 0, i64 2
  %224 = load double, double* %223, align 8
  %225 = fmul double %224, %220
  store double %225, double* %223, align 8
  ret void
}

declare dso_local i32 @ff_matrix_invert_3x3(double**, double**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
