; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/external/sbc/plc/extr_sbc_plc.c_crop_sample.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/external/sbc/plc/extr_sbc_plc.c_crop_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float)* @crop_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crop_sample(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  store float %4, float* %3, align 4
  %5 = load float, float* %3, align 4
  %6 = fpext float %5 to double
  %7 = fcmp ogt double %6, 3.276700e+04
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store float 3.276700e+04, float* %3, align 4
  br label %9

9:                                                ; preds = %8, %1
  %10 = load float, float* %3, align 4
  %11 = fpext float %10 to double
  %12 = fcmp olt double %11, -3.276800e+04
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store float -3.276800e+04, float* %3, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = load float, float* %3, align 4
  %16 = fptosi float %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
