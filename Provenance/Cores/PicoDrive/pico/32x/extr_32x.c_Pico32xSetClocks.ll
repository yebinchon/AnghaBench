; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_Pico32xSetClocks.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_Pico32xSetClocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@OSC_NTSC = common dso_local global i32 0, align 4
@CYCLE_MULT_SHIFT = common dso_local global i32 0, align 4
@msh2 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ssh2 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Pico32xSetClocks(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @OSC_NTSC, align 4
  %7 = sdiv i32 %6, 7
  %8 = sitofp i32 %7 to float
  store float %8, float* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = sitofp i32 %12 to float
  %14 = load i32, i32* @CYCLE_MULT_SHIFT, align 4
  %15 = shl i32 1, %14
  %16 = sitofp i32 %15 to float
  %17 = fmul float %13, %16
  %18 = load float, float* %5, align 4
  %19 = fdiv float %17, %18
  %20 = fptosi float %19 to i32
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @msh2, i32 0, i32 0), align 4
  %21 = load float, float* %5, align 4
  %22 = load i32, i32* @CYCLE_MULT_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = sitofp i32 %23 to float
  %25 = fmul float %21, %24
  %26 = load i32, i32* %3, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %25, %27
  %29 = fptosi float %28 to i32
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @msh2, i32 0, i32 1), align 4
  br label %30

30:                                               ; preds = %11, %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = sitofp i32 %34 to float
  %36 = load i32, i32* @CYCLE_MULT_SHIFT, align 4
  %37 = shl i32 1, %36
  %38 = sitofp i32 %37 to float
  %39 = fmul float %35, %38
  %40 = load float, float* %5, align 4
  %41 = fdiv float %39, %40
  %42 = fptosi float %41 to i32
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ssh2, i32 0, i32 0), align 4
  %43 = load float, float* %5, align 4
  %44 = load i32, i32* @CYCLE_MULT_SHIFT, align 4
  %45 = shl i32 1, %44
  %46 = sitofp i32 %45 to float
  %47 = fmul float %43, %46
  %48 = load i32, i32* %4, align 4
  %49 = sitofp i32 %48 to float
  %50 = fdiv float %47, %49
  %51 = fptosi float %50 to i32
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ssh2, i32 0, i32 1), align 4
  br label %52

52:                                               ; preds = %33, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
