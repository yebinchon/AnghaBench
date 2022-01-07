; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_fill_rgb2yuv_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_fill_rgb2yuv_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LumaCoefficients = type { double, double, double }

@ycgco_matrix = common dso_local global i32 0, align 4
@gbr_matrix = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_fill_rgb2yuv_table(%struct.LumaCoefficients* %0, [3 x double]* %1) #0 {
  %3 = alloca %struct.LumaCoefficients*, align 8
  %4 = alloca [3 x double]*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.LumaCoefficients* %0, %struct.LumaCoefficients** %3, align 8
  store [3 x double]* %1, [3 x double]** %4, align 8
  %7 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %8 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fcmp oeq double %9, 2.500000e-01
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %13 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %12, i32 0, i32 1
  %14 = load double, double* %13, align 8
  %15 = fcmp oeq double %14, 5.000000e-01
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %18 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %17, i32 0, i32 2
  %19 = load double, double* %18, align 8
  %20 = fcmp oeq double %19, 2.500000e-01
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load [3 x double]*, [3 x double]** %4, align 8
  %23 = bitcast [3 x double]* %22 to double**
  %24 = load i32, i32* @ycgco_matrix, align 4
  %25 = call i32 @memcpy(double** %23, i32 %24, i32 72)
  br label %114

26:                                               ; preds = %16, %11, %2
  %27 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %28 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fcmp oeq double %29, 1.000000e+00
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %33 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  %35 = fcmp oeq double %34, 1.000000e+00
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %38 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %37, i32 0, i32 2
  %39 = load double, double* %38, align 8
  %40 = fcmp oeq double %39, 1.000000e+00
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load [3 x double]*, [3 x double]** %4, align 8
  %43 = bitcast [3 x double]* %42 to double**
  %44 = load i32, i32* @gbr_matrix, align 4
  %45 = call i32 @memcpy(double** %43, i32 %44, i32 72)
  br label %114

46:                                               ; preds = %36, %31, %26
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %49 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = load [3 x double]*, [3 x double]** %4, align 8
  %52 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 0
  %53 = getelementptr inbounds [3 x double], [3 x double]* %52, i64 0, i64 0
  store double %50, double* %53, align 8
  %54 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %55 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %54, i32 0, i32 1
  %56 = load double, double* %55, align 8
  %57 = load [3 x double]*, [3 x double]** %4, align 8
  %58 = getelementptr inbounds [3 x double], [3 x double]* %57, i64 0
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 1
  store double %56, double* %59, align 8
  %60 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %61 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %60, i32 0, i32 2
  %62 = load double, double* %61, align 8
  %63 = load [3 x double]*, [3 x double]** %4, align 8
  %64 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 0
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 0, i64 2
  store double %62, double* %65, align 8
  %66 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %67 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %66, i32 0, i32 2
  %68 = load double, double* %67, align 8
  %69 = fsub double %68, 1.000000e+00
  %70 = fdiv double 5.000000e-01, %69
  store double %70, double* %5, align 8
  %71 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %72 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %71, i32 0, i32 0
  %73 = load double, double* %72, align 8
  %74 = fsub double %73, 1.000000e+00
  %75 = fdiv double 5.000000e-01, %74
  store double %75, double* %6, align 8
  %76 = load double, double* %5, align 8
  %77 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %78 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = fmul double %76, %79
  %81 = load [3 x double]*, [3 x double]** %4, align 8
  %82 = getelementptr inbounds [3 x double], [3 x double]* %81, i64 1
  %83 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0, i64 0
  store double %80, double* %83, align 8
  %84 = load double, double* %5, align 8
  %85 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %86 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %85, i32 0, i32 1
  %87 = load double, double* %86, align 8
  %88 = fmul double %84, %87
  %89 = load [3 x double]*, [3 x double]** %4, align 8
  %90 = getelementptr inbounds [3 x double], [3 x double]* %89, i64 1
  %91 = getelementptr inbounds [3 x double], [3 x double]* %90, i64 0, i64 1
  store double %88, double* %91, align 8
  %92 = load [3 x double]*, [3 x double]** %4, align 8
  %93 = getelementptr inbounds [3 x double], [3 x double]* %92, i64 1
  %94 = getelementptr inbounds [3 x double], [3 x double]* %93, i64 0, i64 2
  store double 5.000000e-01, double* %94, align 8
  %95 = load [3 x double]*, [3 x double]** %4, align 8
  %96 = getelementptr inbounds [3 x double], [3 x double]* %95, i64 2
  %97 = getelementptr inbounds [3 x double], [3 x double]* %96, i64 0, i64 0
  store double 5.000000e-01, double* %97, align 8
  %98 = load double, double* %6, align 8
  %99 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %100 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %99, i32 0, i32 1
  %101 = load double, double* %100, align 8
  %102 = fmul double %98, %101
  %103 = load [3 x double]*, [3 x double]** %4, align 8
  %104 = getelementptr inbounds [3 x double], [3 x double]* %103, i64 2
  %105 = getelementptr inbounds [3 x double], [3 x double]* %104, i64 0, i64 1
  store double %102, double* %105, align 8
  %106 = load double, double* %6, align 8
  %107 = load %struct.LumaCoefficients*, %struct.LumaCoefficients** %3, align 8
  %108 = getelementptr inbounds %struct.LumaCoefficients, %struct.LumaCoefficients* %107, i32 0, i32 2
  %109 = load double, double* %108, align 8
  %110 = fmul double %106, %109
  %111 = load [3 x double]*, [3 x double]** %4, align 8
  %112 = getelementptr inbounds [3 x double], [3 x double]* %111, i64 2
  %113 = getelementptr inbounds [3 x double], [3 x double]* %112, i64 0, i64 2
  store double %110, double* %113, align 8
  br label %114

114:                                              ; preds = %47, %41, %21
  ret void
}

declare dso_local i32 @memcpy(double**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
