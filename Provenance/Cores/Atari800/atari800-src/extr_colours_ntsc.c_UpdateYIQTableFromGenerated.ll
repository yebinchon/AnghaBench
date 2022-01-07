; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_UpdateYIQTableFromGenerated.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_UpdateYIQTableFromGenerated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double, double, double, i64, i64 }

@COLOURS_NTSC_setup = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@__const.UpdateYIQTableFromGenerated.luma_mult = private unnamed_addr constant [16 x double] [double 6.941000e-01, double 7.091000e-01, double 7.241000e-01, double 0x3FE7AEE631F8A090, double 7.560000e-01, double 7.741000e-01, double 7.931000e-01, double 8.121000e-01, double 8.260000e-01, double 0x3FEB1A9FBE76C8B4, double 8.700000e-01, double 8.930000e-01, double 9.160000e-01, double 0x3FEE24DD2F1A9FBE, double 0x3FEF020C49BA5E35, double 1.000000e+00], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double, double)* @UpdateYIQTableFromGenerated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateYIQTableFromGenerated(double* %0, double %1, double %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca [16 x double], align 16
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %19 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @COLOURS_NTSC_setup, i32 0, i32 0), align 8
  %20 = load double, double* @M_PI, align 8
  %21 = fmul double %19, %20
  %22 = fdiv double %21, 1.800000e+02
  store double %22, double* %7, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @COLOURS_NTSC_setup, i32 0, i32 5), align 8
  %24 = sitofp i64 %23 to double
  %25 = fdiv double %24, 2.550000e+02
  store double %25, double* %10, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @COLOURS_NTSC_setup, i32 0, i32 4), align 8
  %27 = sitofp i64 %26 to double
  %28 = fdiv double %27, 2.550000e+02
  store double %28, double* %11, align 8
  %29 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @COLOURS_NTSC_setup, i32 0, i32 1), align 8
  %30 = fdiv double %29, 2.000000e+00
  %31 = fsub double 1.000000e+00, %30
  store double %31, double* %12, align 8
  %32 = bitcast [16 x double]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 bitcast ([16 x double]* @__const.UpdateYIQTableFromGenerated.luma_mult to i8*), i64 128, i1 false)
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %110, %3
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %113

36:                                               ; preds = %33
  %37 = load double, double* %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sitofp i32 %39 to double
  %41 = load double, double* %7, align 8
  %42 = fmul double %40, %41
  %43 = fsub double %37, %42
  store double %43, double* %14, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load double, double* %6, align 8
  %48 = fadd double %47, 1.000000e+00
  %49 = fmul double %48, 0x3FC6666660000000
  br label %51

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi double [ %49, %46 ], [ 0.000000e+00, %50 ]
  store double %52, double* %15, align 8
  %53 = load double, double* %14, align 8
  %54 = call double @sin(double %53) #3
  %55 = load double, double* %15, align 8
  %56 = fmul double %54, %55
  store double %56, double* %16, align 8
  %57 = load double, double* %14, align 8
  %58 = call double @cos(double %57) #3
  %59 = load double, double* %15, align 8
  %60 = fmul double %58, %59
  store double %60, double* %17, align 8
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %106, %51
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %64, label %109

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [16 x double], [16 x double]* %13, i64 0, i64 %66
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds [16 x double], [16 x double]* %13, i64 0, i64 0
  %70 = load double, double* %69, align 16
  %71 = fsub double %68, %70
  %72 = getelementptr inbounds [16 x double], [16 x double]* %13, i64 0, i64 15
  %73 = load double, double* %72, align 8
  %74 = getelementptr inbounds [16 x double], [16 x double]* %13, i64 0, i64 0
  %75 = load double, double* %74, align 16
  %76 = fsub double %73, %75
  %77 = fdiv double %71, %76
  store double %77, double* %18, align 8
  %78 = load double, double* %18, align 8
  %79 = load double, double* %12, align 8
  %80 = call double @pow(double %78, double %79) #3
  store double %80, double* %18, align 8
  %81 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @COLOURS_NTSC_setup, i32 0, i32 2), align 8
  %82 = fmul double %81, 5.000000e-01
  %83 = fadd double %82, 1.000000e+00
  %84 = load double, double* %18, align 8
  %85 = fmul double %84, %83
  store double %85, double* %18, align 8
  %86 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @COLOURS_NTSC_setup, i32 0, i32 3), align 8
  %87 = fmul double %86, 5.000000e-01
  %88 = load double, double* %18, align 8
  %89 = fadd double %88, %87
  store double %89, double* %18, align 8
  %90 = load double, double* %18, align 8
  %91 = load double, double* %11, align 8
  %92 = load double, double* %10, align 8
  %93 = fsub double %91, %92
  %94 = fmul double %90, %93
  %95 = load double, double* %10, align 8
  %96 = fadd double %94, %95
  store double %96, double* %18, align 8
  %97 = load double, double* %18, align 8
  %98 = load double*, double** %4, align 8
  %99 = getelementptr inbounds double, double* %98, i32 1
  store double* %99, double** %4, align 8
  store double %97, double* %98, align 8
  %100 = load double, double* %16, align 8
  %101 = load double*, double** %4, align 8
  %102 = getelementptr inbounds double, double* %101, i32 1
  store double* %102, double** %4, align 8
  store double %100, double* %101, align 8
  %103 = load double, double* %17, align 8
  %104 = load double*, double** %4, align 8
  %105 = getelementptr inbounds double, double* %104, i32 1
  store double* %105, double** %4, align 8
  store double %103, double* %104, align 8
  br label %106

106:                                              ; preds = %64
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %61

109:                                              ; preds = %61
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %33

113:                                              ; preds = %33
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
