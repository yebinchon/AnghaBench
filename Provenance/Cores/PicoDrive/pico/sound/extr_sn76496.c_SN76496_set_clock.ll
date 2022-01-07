; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sn76496.c_SN76496_set_clock.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sn76496.c_SN76496_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN76496 = type { double, double }

@STEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SN76496*, i32)* @SN76496_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SN76496_set_clock(%struct.SN76496* %0, i32 %1) #0 {
  %3 = alloca %struct.SN76496*, align 8
  %4 = alloca i32, align 4
  store %struct.SN76496* %0, %struct.SN76496** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @STEP, align 8
  %6 = sitofp i64 %5 to double
  %7 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %8 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %7, i32 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = fmul double %6, %9
  %11 = fmul double %10, 1.600000e+01
  %12 = load i32, i32* %4, align 4
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %11, %13
  %15 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %16 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %15, i32 0, i32 0
  store double %14, double* %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
