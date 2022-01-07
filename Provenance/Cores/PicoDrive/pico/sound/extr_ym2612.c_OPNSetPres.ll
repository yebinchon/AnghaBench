; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_OPNSetPres.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_OPNSetPres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, double*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, double, i64 }

@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EG_SH = common dso_local global i32 0, align 4
@dt_tab = common dso_local global i32 0, align 4
@FREQ_SH = common dso_local global i32 0, align 4
@fn_table = common dso_local global i64* null, align 8
@lfo_samples_per_step = common dso_local global double* null, align 8
@LFO_SH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @OPNSetPres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OPNSetPres(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 2, i32 1), align 8
  %5 = fcmp une double %4, 0.000000e+00
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 2, i32 2), align 8
  %8 = sitofp i64 %7 to double
  %9 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 2, i32 1), align 8
  %10 = fdiv double %8, %9
  %11 = load i32, i32* %2, align 4
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %10, %12
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %6
  %16 = phi double [ %13, %6 ], [ 0.000000e+00, %14 ]
  store double %16, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 2, i32 0), align 8
  %17 = load i32, i32* @EG_SH, align 4
  %18 = shl i32 1, %17
  %19 = sitofp i32 %18 to double
  %20 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 2, i32 0), align 8
  %21 = fmul double %19, %20
  %22 = fptosi double %21 to i32
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0), align 8
  %23 = load i32, i32* @dt_tab, align 4
  %24 = call i32 @init_timetables(i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %44, %15
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 4096
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = sitofp i32 %29 to double
  %31 = fmul double %30, 3.200000e+01
  %32 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 2, i32 0), align 8
  %33 = fmul double %31, %32
  %34 = load i32, i32* @FREQ_SH, align 4
  %35 = sub nsw i32 %34, 10
  %36 = shl i32 1, %35
  %37 = sitofp i32 %36 to double
  %38 = fmul double %33, %37
  %39 = fptosi double %38 to i64
  %40 = load i64*, i64** @fn_table, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %39, i64* %43, align 8
  br label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %25

47:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load double*, double** @lfo_samples_per_step, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fdiv double 1.000000e+00, %56
  %58 = load i32, i32* @LFO_SH, align 4
  %59 = shl i32 1, %58
  %60 = sitofp i32 %59 to double
  %61 = fmul double %57, %60
  %62 = load double, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 2, i32 0), align 8
  %63 = fmul double %61, %62
  %64 = load double*, double** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 1), align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  store double %63, double* %67, align 8
  br label %68

68:                                               ; preds = %51
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %48

71:                                               ; preds = %48
  ret void
}

declare dso_local i32 @init_timetables(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
