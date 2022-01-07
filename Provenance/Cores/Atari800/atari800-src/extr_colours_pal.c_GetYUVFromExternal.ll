; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_pal.c_GetYUVFromExternal.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_pal.c_GetYUVFromExternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double, double }
%struct.TYPE_4__ = type { i8*, i64 }

@COLOURS_PAL_setup = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@COLOURS_PAL_external = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*)* @GetYUVFromExternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetYUVFromExternal(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double* %0, double** %2, align 8
  %16 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 0), align 8
  %17 = fdiv double %16, 2.000000e+00
  %18 = fsub double 1.000000e+00, %17
  store double %18, double* %3, align 8
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_PAL_external, i32 0, i32 0), align 8
  store i8* %19, i8** %4, align 8
  %20 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 1), align 8
  %21 = load double, double* @M_PI, align 8
  %22 = fmul double %20, %21
  store double %22, double* %6, align 8
  %23 = load double, double* %6, align 8
  %24 = call double @sin(double %23) #3
  store double %24, double* %7, align 8
  %25 = load double, double* %6, align 8
  %26 = call double @cos(double %25) #3
  store double %26, double* %8, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %113, %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %116

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  %33 = load i8, i8* %31, align 1
  %34 = uitofp i8 %33 to double
  %35 = fdiv double %34, 2.550000e+02
  store double %35, double* %9, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i8, i8* %36, align 1
  %39 = uitofp i8 %38 to double
  %40 = fdiv double %39, 2.550000e+02
  store double %40, double* %10, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = load i8, i8* %41, align 1
  %44 = uitofp i8 %43 to double
  %45 = fdiv double %44, 2.550000e+02
  store double %45, double* %11, align 8
  %46 = load double, double* %9, align 8
  %47 = load double, double* %10, align 8
  %48 = load double, double* %11, align 8
  %49 = call i32 @Colours_RGB2YUV(double %46, double %47, double %48, double* %12, double* %13, double* %14)
  %50 = load double, double* %13, align 8
  store double %50, double* %15, align 8
  %51 = load double, double* %15, align 8
  %52 = load double, double* %8, align 8
  %53 = fmul double %51, %52
  %54 = load double, double* %14, align 8
  %55 = load double, double* %7, align 8
  %56 = fmul double %54, %55
  %57 = fsub double %53, %56
  store double %57, double* %13, align 8
  %58 = load double, double* %15, align 8
  %59 = load double, double* %7, align 8
  %60 = fmul double %58, %59
  %61 = load double, double* %14, align 8
  %62 = load double, double* %8, align 8
  %63 = fmul double %61, %62
  %64 = fadd double %60, %63
  store double %64, double* %14, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_PAL_external, i32 0, i32 1), align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %30
  %68 = load double, double* %12, align 8
  %69 = load double, double* %3, align 8
  %70 = call double @pow(double %68, double %69) #3
  store double %70, double* %12, align 8
  %71 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 2), align 8
  %72 = fmul double %71, 5.000000e-01
  %73 = fadd double %72, 1.000000e+00
  %74 = load double, double* %12, align 8
  %75 = fmul double %74, %73
  store double %75, double* %12, align 8
  %76 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 3), align 8
  %77 = fmul double %76, 5.000000e-01
  %78 = load double, double* %12, align 8
  %79 = fadd double %78, %77
  store double %79, double* %12, align 8
  %80 = load double, double* %12, align 8
  %81 = fcmp ogt double %80, 1.000000e+00
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  store double 1.000000e+00, double* %12, align 8
  br label %88

83:                                               ; preds = %67
  %84 = load double, double* %12, align 8
  %85 = fcmp olt double %84, 0.000000e+00
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store double 0.000000e+00, double* %12, align 8
  br label %87

87:                                               ; preds = %86, %83
  br label %88

88:                                               ; preds = %87, %82
  %89 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 4), align 8
  %90 = fadd double %89, 1.000000e+00
  %91 = load double, double* %13, align 8
  %92 = fmul double %91, %90
  store double %92, double* %13, align 8
  %93 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 4), align 8
  %94 = fadd double %93, 1.000000e+00
  %95 = load double, double* %14, align 8
  %96 = fmul double %95, %94
  store double %96, double* %14, align 8
  br label %97

97:                                               ; preds = %88, %30
  %98 = load double, double* %12, align 8
  %99 = load double*, double** %2, align 8
  %100 = getelementptr inbounds double, double* %99, i32 1
  store double* %100, double** %2, align 8
  store double %98, double* %99, align 8
  %101 = load double, double* %13, align 8
  %102 = load double*, double** %2, align 8
  %103 = getelementptr inbounds double, double* %102, i32 1
  store double* %103, double** %2, align 8
  store double %101, double* %102, align 8
  %104 = load double, double* %13, align 8
  %105 = load double*, double** %2, align 8
  %106 = getelementptr inbounds double, double* %105, i32 1
  store double* %106, double** %2, align 8
  store double %104, double* %105, align 8
  %107 = load double, double* %14, align 8
  %108 = load double*, double** %2, align 8
  %109 = getelementptr inbounds double, double* %108, i32 1
  store double* %109, double** %2, align 8
  store double %107, double* %108, align 8
  %110 = load double, double* %14, align 8
  %111 = load double*, double** %2, align 8
  %112 = getelementptr inbounds double, double* %111, i32 1
  store double* %112, double** %2, align 8
  store double %110, double* %111, align 8
  br label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %27

116:                                              ; preds = %27
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

declare dso_local i32 @Colours_RGB2YUV(double, double, double, double*, double*, double*) #2

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
