; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2413.c_OPLL_initalize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2413.c_OPLL_initalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double, double, i32, i32, i64* }

@FREQ_SH = common dso_local global i32 0, align 4
@ym2413 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LFO_SH = common dso_local global i32 0, align 4
@EG_SH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @OPLL_initalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OPLL_initalize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  store double 1.000000e+00, double* %2, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 1024
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sitofp i32 %7 to double
  %9 = fmul double %8, 6.400000e+01
  %10 = load double, double* %2, align 8
  %11 = fmul double %9, %10
  %12 = load i32, i32* @FREQ_SH, align 4
  %13 = sub nsw i32 %12, 10
  %14 = shl i32 1, %13
  %15 = sitofp i32 %14 to double
  %16 = fmul double %11, %15
  %17 = fptosi double %16 to i64
  %18 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 5), align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 %17, i64* %21, align 8
  br label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %3

25:                                               ; preds = %3
  %26 = load i32, i32* @LFO_SH, align 4
  %27 = shl i32 1, %26
  %28 = sitofp i32 %27 to double
  %29 = fmul double 1.562500e-02, %28
  %30 = load double, double* %2, align 8
  %31 = fmul double %29, %30
  store double %31, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 0), align 8
  %32 = load i32, i32* @LFO_SH, align 4
  %33 = shl i32 1, %32
  %34 = sitofp i32 %33 to double
  %35 = fmul double 0x3F50000000000000, %34
  %36 = load double, double* %2, align 8
  %37 = fmul double %35, %36
  store double %37, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 1), align 8
  %38 = load i32, i32* @FREQ_SH, align 4
  %39 = shl i32 1, %38
  %40 = sitofp i32 %39 to double
  %41 = fmul double 1.000000e+00, %40
  %42 = load double, double* %2, align 8
  %43 = fmul double %41, %42
  store double %43, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 2), align 8
  %44 = load i32, i32* @EG_SH, align 4
  %45 = shl i32 1, %44
  %46 = sitofp i32 %45 to double
  %47 = load double, double* %2, align 8
  %48 = fmul double %46, %47
  %49 = fptosi double %48 to i32
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %50 = load i32, i32* @EG_SH, align 4
  %51 = shl i32 1, %50
  %52 = mul nsw i32 1, %51
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 4), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
