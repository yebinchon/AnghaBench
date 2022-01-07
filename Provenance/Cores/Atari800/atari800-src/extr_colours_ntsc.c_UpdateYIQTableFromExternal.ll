; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_UpdateYIQTableFromExternal.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_UpdateYIQTableFromExternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double }
%struct.TYPE_4__ = type { i8*, i64 }

@COLOURS_NTSC_setup = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@COLOURS_NTSC_external = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@colorburst_angle = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double, double)* @UpdateYIQTableFromExternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateYIQTableFromExternal(double* %0, double %1, double %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %19 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_NTSC_setup, i32 0, i32 0), align 8
  %20 = fdiv double %19, 2.000000e+00
  %21 = fsub double 1.000000e+00, %20
  store double %21, double* %7, align 8
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_external, i32 0, i32 0), align 8
  store i8* %22, i8** %8, align 8
  %23 = load double, double* @colorburst_angle, align 8
  %24 = fneg double %23
  %25 = load double, double* %5, align 8
  %26 = fsub double %24, %25
  store double %26, double* %5, align 8
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %131, %3
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %134

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  %33 = load i8, i8* %31, align 1
  %34 = uitofp i8 %33 to double
  %35 = fdiv double %34, 2.550000e+02
  store double %35, double* %10, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i8, i8* %36, align 1
  %39 = uitofp i8 %38 to double
  %40 = fdiv double %39, 2.550000e+02
  store double %40, double* %11, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  %43 = load i8, i8* %41, align 1
  %44 = uitofp i8 %43 to double
  %45 = fdiv double %44, 2.550000e+02
  store double %45, double* %12, align 8
  %46 = load double, double* %10, align 8
  %47 = fmul double 2.990000e-01, %46
  %48 = load double, double* %11, align 8
  %49 = fmul double 5.870000e-01, %48
  %50 = fadd double %47, %49
  %51 = load double, double* %12, align 8
  %52 = fmul double 1.140000e-01, %51
  %53 = fadd double %50, %52
  store double %53, double* %13, align 8
  %54 = load double, double* %10, align 8
  %55 = fmul double 5.957160e-01, %54
  %56 = load double, double* %11, align 8
  %57 = fmul double 2.744530e-01, %56
  %58 = fsub double %55, %57
  %59 = load double, double* %12, align 8
  %60 = fmul double 3.212630e-01, %59
  %61 = fsub double %58, %60
  store double %61, double* %14, align 8
  %62 = load double, double* %10, align 8
  %63 = fmul double 2.114560e-01, %62
  %64 = load double, double* %11, align 8
  %65 = fmul double 5.225910e-01, %64
  %66 = fsub double %63, %65
  %67 = load double, double* %12, align 8
  %68 = fmul double 3.111350e-01, %67
  %69 = fadd double %66, %68
  store double %69, double* %15, align 8
  %70 = load double, double* %5, align 8
  %71 = call double @sin(double %70) #2
  store double %71, double* %16, align 8
  %72 = load double, double* %5, align 8
  %73 = call double @cos(double %72) #2
  store double %73, double* %17, align 8
  %74 = load double, double* %14, align 8
  store double %74, double* %18, align 8
  %75 = load double, double* %18, align 8
  %76 = load double, double* %17, align 8
  %77 = fmul double %75, %76
  %78 = load double, double* %15, align 8
  %79 = load double, double* %16, align 8
  %80 = fmul double %78, %79
  %81 = fsub double %77, %80
  store double %81, double* %14, align 8
  %82 = load double, double* %18, align 8
  %83 = load double, double* %16, align 8
  %84 = fmul double %82, %83
  %85 = load double, double* %15, align 8
  %86 = load double, double* %17, align 8
  %87 = fmul double %85, %86
  %88 = fadd double %84, %87
  store double %88, double* %15, align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_NTSC_external, i32 0, i32 1), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %30
  %92 = load double, double* %13, align 8
  %93 = load double, double* %7, align 8
  %94 = call double @pow(double %92, double %93) #2
  store double %94, double* %13, align 8
  %95 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_NTSC_setup, i32 0, i32 1), align 8
  %96 = fmul double %95, 5.000000e-01
  %97 = fadd double %96, 1.000000e+00
  %98 = load double, double* %13, align 8
  %99 = fmul double %98, %97
  store double %99, double* %13, align 8
  %100 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_NTSC_setup, i32 0, i32 2), align 8
  %101 = fmul double %100, 5.000000e-01
  %102 = load double, double* %13, align 8
  %103 = fadd double %102, %101
  store double %103, double* %13, align 8
  %104 = load double, double* %13, align 8
  %105 = fcmp ogt double %104, 1.000000e+00
  br i1 %105, label %106, label %107

106:                                              ; preds = %91
  store double 1.000000e+00, double* %13, align 8
  br label %112

107:                                              ; preds = %91
  %108 = load double, double* %13, align 8
  %109 = fcmp olt double %108, 0.000000e+00
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store double 0.000000e+00, double* %13, align 8
  br label %111

111:                                              ; preds = %110, %107
  br label %112

112:                                              ; preds = %111, %106
  %113 = load double, double* %6, align 8
  %114 = fadd double %113, 1.000000e+00
  %115 = load double, double* %14, align 8
  %116 = fmul double %115, %114
  store double %116, double* %14, align 8
  %117 = load double, double* %6, align 8
  %118 = fadd double %117, 1.000000e+00
  %119 = load double, double* %15, align 8
  %120 = fmul double %119, %118
  store double %120, double* %15, align 8
  br label %121

121:                                              ; preds = %112, %30
  %122 = load double, double* %13, align 8
  %123 = load double*, double** %4, align 8
  %124 = getelementptr inbounds double, double* %123, i32 1
  store double* %124, double** %4, align 8
  store double %122, double* %123, align 8
  %125 = load double, double* %14, align 8
  %126 = load double*, double** %4, align 8
  %127 = getelementptr inbounds double, double* %126, i32 1
  store double* %127, double** %4, align 8
  store double %125, double* %126, align 8
  %128 = load double, double* %15, align 8
  %129 = load double*, double** %4, align 8
  %130 = getelementptr inbounds double, double* %129, i32 1
  store double* %130, double** %4, align 8
  store double %128, double* %129, align 8
  br label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %27

134:                                              ; preds = %27
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
